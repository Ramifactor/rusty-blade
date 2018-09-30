///scr_item_show_arrow()

//Collision check
player_here = place_meeting(x, y - 4, obj_player);

//Arrow Display
if (menu_open || ignore_player)
    {
    with (my_arrow) {image_alpha = 0; }
    show_arrow = false;
    }
else if (player_here && !show_arrow)
    {
    with (my_arrow) { image_alpha = 1; }
    show_arrow = true;
    }
else if (!player_here)
    {
    with (my_arrow) { image_alpha = 0; }
    show_arrow = false;
    }

    
