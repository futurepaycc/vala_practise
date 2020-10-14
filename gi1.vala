/*  
参考：
https://github.com/GNOME/gobject-introspection/blob/master/tests/repository/gitestrepo.c
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
    //  print("hello\n");

    try{
        repo.require("Gio","2.0",GI.RepositoryLoadFlags.IREPOSITORY_LOAD_FLAG_LAZY);

        var gio_base =  repo.find_by_name("Gio","File");
        //  gio_base.
        //  var interface_info = (GI.InterfaceInfo)gio_base.get_type();
        //NOTE: 这里返回的只是一个枚举类型
        var interface_info = gio_base.get_type();
        //  GI.InterfaceInfo
        //  interface_info.find()
        //  var func = interface_info.find_vfunc("read_async");
        //  print(func.get_name());
        stdout.printf(interface_info.to_string()+"\n");
    }catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
    }
}