///scr_item_movecollide()

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
    if (grounded) hspd = scr_approach(hspd, 0, global.fric_ground * 0.75);
    }

// Movement direction
if (hspd != 0) movedir_x = sign(hspd);

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

if (place_meeting(x, y + 1, obj_solid)) grounded = true; else grounded = false; // On the ground
if (place_meeting(x, y - 1, obj_solid)) col_above = true; else col_above = false; // Ceiling collision

if (place_meeting(x + 1, y, obj_solid)) col_right = true; else col_right = false; // Left & right wall collisions
if (place_meeting(x - 1, y, obj_solid)) col_left = true; else col_left = false;
