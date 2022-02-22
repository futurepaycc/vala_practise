using Gtk;

public class Hello1Window : Window {

    public Hello1Window () {
        set_default_size(800,600);
        var button1 = new Button();
        button1.set_label ("btn1");
        add(button1);
        button1.clicked.connect (this.on_click);
    }

    private void on_click(){
        stdout.printf("you clicked me \n");
        stdout.flush();
    }
    
}

void main (string[] args) {
    Gtk.init (ref args);

    var win = new Hello1Window ();
    win.show_all ();

    win.destroy.connect(Gtk.main_quit);

    Gtk.main ();
}
