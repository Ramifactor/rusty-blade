///scr_global_init_display()

//Display Properties
ideal_width = 0;
ideal_height = 270;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height * aspect_ratio);   // Use for fixed height resizing

//Pixel Scaling
if(display_get_width() mod ideal_width != 0)
    {
    var d = round(display_get_width() / ideal_width);
    ideal_width = display_get_width() / d;    
    }
if(display_get_height() mod ideal_height != 0)
    {
    var d = round(display_get_height() / ideal_height);
    ideal_height = display_get_height() / d;    
    }    
    
// Check for odd numbers
if (ideal_width & 1) ideal_width++;
if (ideal_height & 1) ideal_height++;

//Calculate max zoom
zoom = 2;
zoom_max = floor(display_get_width() / ideal_width);

//Apply settings to all rooms
for (var i = 1; i <= room_last; i++)
    {
    if (room_exists(i))
        {
        room_set_view(i, 0, true, 0, 0, ideal_width, ideal_height, 0, 0, ideal_width, ideal_height, 0, 0, 0, 0, -1);
        room_set_view_enabled (i, true);
        }
    }

surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
window_set_size(ideal_width * zoom, ideal_height * zoom);
alarm_set(0, 1);
