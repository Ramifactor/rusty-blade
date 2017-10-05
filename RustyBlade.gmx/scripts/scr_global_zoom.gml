///scr_global_zoom();

if (zoom < zoom_max && (keyboard_check_released(vk_add) || keyboard_check_released(vk_pageup)))
    {
    audio_play_sound(snd_menuopen, 10, false);
    zoom ++;
    window_set_size(ideal_width * zoom, ideal_height * zoom);
//  surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom); // optional (not necessary if no dynamic zoom)
    alarm_set(0,1); 
    }

if (zoom > 1 && (keyboard_check_released(vk_subtract) || keyboard_check_released(vk_pagedown)))
    {
    audio_play_sound(snd_menuopen, 10, false);
    zoom --;
    window_set_size(ideal_width * zoom, ideal_height * zoom);
//  surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom);
    alarm_set(0,1);
    }
