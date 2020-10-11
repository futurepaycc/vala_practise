using Gtk;

public class Hello1Window : Window {

    public Hello1Window () {
        var button1 = new Button.with_label("button1");
        button1.clicked.connect(()=>{
            stdout.printf("hello world\n");
            button1.set_label("button2");
            this.set_title("new titile");
        });
        this.add(button1);
        this.set_default_size(800,600);
        this.destroy.connect(Gtk.main_quit);
    }
}

void main (string[] args) {
    Gtk.init (ref args);

    var win = new Hello1Window();
    win.show_all();

    Gtk.main();
}
