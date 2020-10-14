/*  
参考：
https://github.com/GNOME/gobject-introspection/blob/master/tests/repository/gitestrepo.c (看来只能按interface进行枚举遍历，最好用c语言吧)
https://valadoc.org/gobject-introspection-1.0/index.htm
https://github.com/pavouk/lgi/blob/master/tools/dump-typelib.lua
*/
void main(string[] args){
    //  var repo = new GI.Repository();
    var repo = GI.Repository.get_default();
    var loaded_list = repo.get_loaded_namespaces();
    //  repo.de
    //  repo.load_typelib();
    foreach(var item in loaded_list){
        print(item);
    }

    var searchList = GI.Repository.get_search_path().copy();
    foreach(var item in searchList){
        print(item+"\n");
    }
    try{
        repo.require("Gio","2.0",GI.RepositoryLoadFlags.IREPOSITORY_LOAD_FLAG_LAZY);

        GI.BaseInfo gio_base =  repo.find_by_name("Gio","File");
        GI.InterfaceInfo interface_info = (GI.InterfaceInfo)gio_base; //为什么这里不能用as 语法，只能强转？
        var vfunc = interface_info.find_vfunc("read_async");
        stdout.printf(vfunc.get_name() + "\n");
        stdout.printf("参数长度: "+vfunc.get_n_args().to_string());
    }catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
    }

    try {GI.Repository.dump("/usr/lib/girepository-1.0/Notify-0.7.typelib");} catch (Error e) {stderr.printf(e.message);}
}