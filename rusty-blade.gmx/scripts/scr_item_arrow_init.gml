///scr_item_arrow_init()
show_arrow = false;
my_arrow = instance_create(x, y - 18, obj_interact_arrow_down);
with (my_arrow) 
    { 
    my_owner = other.id;
    image_alpha = 0; 
    }
