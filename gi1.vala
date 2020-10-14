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
        print(item);
    }
    //  print("hello\n");

    repo.require("Gio","2.0",GI.RepositoryLoadFlags.IREPOSITORY_LOAD_FLAG_LAZY);

    var gio_base =  repo.find_by_name("Gio","File");
    //  gio_base.
    var interface_info = (GI.InterfaceInfo)gio_base.get_type();
    //  GI.InterfaceInfo
    //  interface_info.find()
    var func = interface_info.find_vfunc("read_async");
    print(func.get_name());
}