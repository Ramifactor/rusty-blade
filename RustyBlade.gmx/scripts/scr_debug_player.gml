///scr_debug_player()

draw_set_font(fnt_debug);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

with (obj_player)
{
draw_text(16, 16, "playerstate: " + string(playerstate)) ;
draw_text(16, 32, "sleep: " + string(sleep));
draw_text (16,48, "grounded: " + string(grounded) + " above: " + string(col_above) + "  col_left: " + string(col_left) 
                              + "  col_right: " + string(col_right));
draw_text(16, 64, "attack: " + string(attacking));
draw_text(16,80, "hspd: " + string(hspd) + " / " + string(hspd_max) + "   vspd: " + string(vspd)+ " / " + string(vspd_max));
draw_text(16,96, "x: " + string(x) + "  y: " + string(y) + "    movedir_x = " + string(movedir_x));
}

draw_set_color(c_blue);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(display_get_gui_width() - 5, display_get_gui_height() - 5, "FPS: " + string(fps_real));

with(obj_menu)
    {
    draw_text(16, 112, "hl: " + string(highlight_index));
    }
