/*  
https://wiki.gnome.org/Projects/Vala/GIOSamples
https://github.com/vala-lang/valadoc-org/tree/master/examples
*/

/*
   步骤:
 * make source=readfile1 (这里会先添加meson依赖)
 * make readfile1
 */

int test1() {
    var file = File.new_for_path("/etc/passwd");
    if (!file.query_exists()) {
        stderr.printf("文件不存在");
        return 1;
    }

    try {
        var dis = new DataInputStream(file.read());
        string line;
        while ((line = dis.read_line(null)) != null)
            stdout.printf("%s\n", line);
    } catch (Error e) {
        error("%s", e.message);
    }
    return 0;
}

int main(){
    try{
        var file = File.new_for_path("/etc/passwd");
        var dis = new DataInputStream(file.read());
        string line;
        while ((line = dis.read_line(null)) != null)
            stdout.printf("%s\n", line);
    }catch(Error e){}
    return 0;
}