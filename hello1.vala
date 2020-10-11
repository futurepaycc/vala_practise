using Gtk;

public class Hello1Window : Window {

    public Hello1Window () {
        var label = new Label ("Hello World");
        add (label);
        set_default_size(800,600);
        destroy.connect(Gtk.main_quit);
    }
}

void main (string[] args) {
    Gtk.init (ref args);

    var win = new Hello1Window ();
    win.show_all ();

    Gtk.main ();
}
