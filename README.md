### single vala file test boilerplate
quick dirty practise for vala beginner

### why?
vala-language-server donot support this mode

### feature
1. single file compile,every file can own main()
2. language server working with meson
3. debug with gdb

### requirment
* nix environment
* vala-language-server
* vala vscode plugin
* vala lib and requmirment

### step
1. add new vala file in workspaceRoot
2. edit
3. F5 compile,debug

### problem
* new file main() and 'Gtk' namespace show error
* solution: after F5, close and reopen

### working way
see: lauch.json、tasks.json, makefile、addFile.py

### vala_code formatter
uncrustify -c uncrustify.vala.cfg --replace --no-backup hello1.vala
https://raw.githubusercontent.com/flplv/vala-uncrustify/master/uncrustify.vala.cfg

### refer:
* https://mesonbuild.com/Tutorial.html
* https://wiki.gnome.org/Projects/Vala/Documentation
* https://github.com/robertsanseries/template-for-vala-apps

### examples
https://github.com/flobrosch/valadoc-org (useful labs)

### interoperability
https://stackoverflow.com/questions/57734487/how-do-i-compile-vala-to-c-and-call-functions-in-another-file-originally-writte (vala call c)
https://stackoverflow.com/questions/16885242/vala-gui-and-logic-in-c (vala call c++)