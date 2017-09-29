///scr_dog_xmove()

// Application of acceleration based on left/right input
if (grounded) 
    {
    if (running) hspd_max = hspd_max_running;
    else hspd_max = hspd_max_def;
    }
else hspd_max = hspd_max_air;

if (abs(hspd) < hspd_max)
    { // Apply input only for acceleration, otherwise it will compound with friction
    if (input_padL)
        {
        if (grounded) hspd = scr_approach(hspd, -hspd_max, accel_ground); 
        else hspd = scr_approach(hspd, -hspd_max_air, accel_air);
        }
    else if (input_padR)
        {
        if (grounded) hspd = scr_approach(hspd, hspd_max, accel_ground); 
        else hspd = scr_approach(hspd, hspd_max_air, accel_air);
        }
    }
