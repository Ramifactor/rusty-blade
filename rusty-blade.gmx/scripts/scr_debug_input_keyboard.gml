///scr_debug_input_keyboard()

draw_set_font(fnt_debug);
draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(display_get_gui_width() * 0.5, 8, "P1 U: " + string(input_padU) + " D: " + string(input_padD) + " L: " + string(input_padL) + " R: " + string(input_padR) 
          + " B1: " + string(input_B1) + " B2: " + string(input_B2));

