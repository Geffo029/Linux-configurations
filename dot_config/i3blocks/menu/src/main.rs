extern crate gtk;
use gtk::prelude::*;
use gtk::{Label, Scale, Window, WindowType, Button};


fn main() {
	gtk::init().expect("Failed to initialize GTK.");

	let window = Window::new(WindowType::Toplevel);
	window.set_title("Popup Window");
	window.set_default_size(300, 200);

	let box_container = gtk::Box::new(gtk::Orientation::Vertical, 6);
	window.add(&box_container);

	// let slider = Scale::new_with_range(gtk::Orientation::Horizontal, 0.0, 100.0, 1.0);
	let slider = Scale::with_range(gtk::Orientation::Horizontal, 0.0, 100.0, 1.0);
	box_container.pack_start(&slider, true, true, 0);

	// let button = Button::with_label("Chiudi");
	// button.connect_clicked(move |_| {
	// 	println!("Chiusura della finestra");
	// 	unsafe { window.destroy() }; //SI PUO' FARE MEGLIO
	// });
	// box_container.pack_start(&button, true, true, 0);

	window.connect_delete_event(|_, _| {
		gtk::main_quit();
		Inhibit(false)
	});

	window.connect_focus_out_event(|_, _| {
		println!("Perdita del focus");
		gtk::main_quit();
		Inhibit(false)
	});

	window.show_all();

	gtk::main();
}

