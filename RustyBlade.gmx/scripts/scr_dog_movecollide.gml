///scr_dog_movecollide()

// Gravity & Vertical Speed
vspd_max = vspd_max_def;
vspd = min(vspd, vspd_max);

if (!grounded)
    {
    vspd = scr_approach(vspd, vspd_max, global.grav);
    }
    
// Friction & Horizontal Speed
if (hspd != 0)
    {
    if (grounded) hspd = scr_approach(hspd, 0, global.fric_ground);
    else hspd = scr_approach(hspd, 0, global.fric_air);
    }

// Vertical collision
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

// Horizontal collision
repeat(abs(hspd))
    {
    // Move up slope
    if (place_meeting(x + sign(hspd), y, obj_solid) && !place_meeting(x + sign(hspd), y - 1, obj_solid))
        {
        y--;
        }
    // Flat ground
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

// Collision states
if (place_meeting(x, y + 1, obj_solid)) grounded = 1; else grounded = 0; // On the ground
if (position_meeting(x + 10, y, obj_solid)) col_right = 1; else col_right = 0; // Left & right wall collisions
if (position_meeting(x - 10, y, obj_solid)) col_left = 1; else col_left = 0;

//Pop out of wall (horizontal)
if (position_meeting(x + 9, y, obj_solid))
   {
   while(position_meeting(x + 9, y, obj_solid)) x--;
   }
else if (position_meeting(x - 9, y, obj_solid))
   {
   while(position_meeting(x - 9, y, obj_solid)) x++; 
   }
