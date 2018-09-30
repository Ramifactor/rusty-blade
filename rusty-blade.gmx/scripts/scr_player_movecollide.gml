///scr_player_movecollide()

//Gravity & Vertical Speed
vspd_max = vspd_max_def;
vspd = min(vspd, vspd_max);

if (!grounded)
    {
    vspd = scr_approach(vspd, vspd_max, global.grav);
    }
    
//Friction & Horizontal Speed
if (hspd != 0)
    {
    if (grounded) hspd = scr_approach(hspd, 0, global.fric_ground);
    else hspd = scr_approach(hspd, 0, global.fric_air);
    }

if (!menu_open && !levelup && !attacking 
    && playerstate != STATE_PLAYER.kneel && playerstate != STATE_PLAYER.pet
    && playerstate != STATE_PLAYER.drink)
    {
    scr_player_xmove();
    }

//Movement direction
if (hspd != 0) movedir_x = sign(hspd);

if (!menu_open && hspd == 0 && !attacking && playerstate != STATE_PLAYER.kneel && playerstate != STATE_PLAYER.pet)
    {
    if (input_padL) movedir_x = -1; // movedir changes with input even if player cannot move
    else if (input_padR) movedir_x = 1;
    }

//Vertical collision
repeat(abs(vspd))
    {
    if (!place_meeting(x, y + sign(vspd), obj_solid))
        {
        y += sign(vspd);
        }
    else
        {
        vspd = 0;
        break;
        }
    }

//Horizontal collision
repeat(abs(hspd))
    {
    //Move up slope
    if (place_meeting(x + sign(hspd), y, obj_solid) && place_meeting(x + sign(hspd), y - 1, obj_solid) && !place_meeting(x + sign(hspd), y - 2, obj_solid))
        {
        y -= 2;
        }
    else if (place_meeting(x + sign(hspd), y, obj_solid) && !place_meeting(x + sign(hspd), y - 1, obj_solid))
        {
        y--;
        }
    //Flat ground
    if (!place_meeting(x + sign(hspd), y, obj_solid))
        {
        x += sign(hspd);
        }
    else
        {
        hspd = 0;
        break;
        }
    }

//Collision states
if (position_meeting(x, y + 17, obj_solid)) grounded = 1; else grounded = 0; // On the ground
if (position_meeting(x, y - 14, obj_solid)) col_above = 1; else col_above = 0; // Ceiling collision

if (position_meeting(x + 6, y, obj_solid)) col_right = 1; else col_right = 0; // Left & right wall collisions
if (position_meeting(x - 7, y, obj_solid)) col_left = 1; else col_left = 0;

//Pop out of wall (horizontal)
if (position_meeting(x + 5, y, obj_solid))
   {
   while(position_meeting(x + 5, y, obj_solid)) x--;
   }
else if (position_meeting(x - 6, y, obj_solid))
   {
   while(position_meeting(x - 6, y, obj_solid)) x++; 
   }
   
if (position_meeting(x + 5, y, obj_player_block))
   {
   while(position_meeting(x + 5, y, obj_player_block)) x--;
   }
else if (position_meeting(x - 6, y, obj_player_block))
   {
   while(position_meeting(x - 6, y, obj_player_block)) x++; 
   }
