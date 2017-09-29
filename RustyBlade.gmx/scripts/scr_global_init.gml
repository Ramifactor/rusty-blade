///scr_global_init()

// Display
scr_global_init_display();

// Gamepad
scr_global_init_input_keyboard();

// World Physics
scr_global_physics(1,1,1);

// Declare project specific global variables
scr_global_init_psgv();

// Next room
if room_exists(room_next(room)) room_goto_next();

