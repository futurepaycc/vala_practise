using Gtk;

void on_button_quit () {
    Gtk.main_quit ();
}

int main (string[] args) {
    Gtk.init (ref args);

    try {
        var builder = new Builder ();
        builder.add_from_file ("glade1.glade");
        builder.connect_signals (null);

        var window = builder.get_object ("window") as Window;
        window.destroy.connect (Gtk.main_quit);

        var button_quit = builder.get_object ("button_quit") as ToolButton; // cannot be Button
        button_quit.clicked.connect (on_button_quit);

        var button_search = builder.get_object ("button_search") as Button;
        button_search.clicked.connect (() => {
            var messagedialog = new Gtk.MessageDialog (window,
                                                       Gtk.DialogFlags.MODAL,
                                                       Gtk.MessageType.WARNING,
                                                       Gtk.ButtonsType.OK_CANCEL,
                                                       "This action will cause the universe to stop existing.");
            messagedialog.response.connect (() => {
                stdout.printf ("hello dialog\n");
            });
            messagedialog.show ();
        });

        window.show_all ();
        Gtk.main ();
    } catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
        return 1;
    }

    return 0;
}