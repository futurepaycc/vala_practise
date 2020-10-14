using Gtk;
using WebKit;

public class Hello1Window : Window {

    public Hello1Window () {
        WebView WebView1 = new WebView();
        add(WebView1);
        WebView1.load_uri("https://www.google.com");

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
