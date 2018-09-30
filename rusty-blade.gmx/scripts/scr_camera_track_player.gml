///scr_camera_track_player()
cam_dist_x = obj_player.x + (obj_player.movedir_x * cam_offset_x);
cam_dist_y = obj_player.y - cam_offset_y;

//Move camera
x += (cam_dist_x - x) / cam_spd;
y += (cam_dist_y - y) / cam_spd;

//Zoom view
var zoom_speed = 0.1;
//view_zoom += keyboard_check(vk_multiply) * zoom_speed;
//view_zoom -= keyboard_check(vk_divide) * zoom_speed;

view_zoom = clamp(view_zoom, 1, view_zoom_max);

view_wview = obj_global.ideal_width / view_zoom;
view_hview = obj_global.ideal_height / view_zoom;

//Center on player
view_xview = x - view_wview / 2 - 10;
view_yview = y - view_hview / 2 - 10;

// Clamp to room
view_xview = clamp(view_xview, 0, room_width - view_wview);
view_yview = clamp(view_yview, 0, room_height - view_hview);

//Camera shake
if (sleep) 
    {
    x += 3; 
    y -= 4;
    }
