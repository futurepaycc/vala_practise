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

### refer:
* https://mesonbuild.com/Tutorial.html
* https://wiki.gnome.org/Projects/Vala/Documentation
* https://github.com/robertsanseries/template-for-vala-apps