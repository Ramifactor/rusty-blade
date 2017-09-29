///scr_playerstate_combat()

// COLLISION & PHYSICS -----------------------------------------------------------------|

// Collision
scr_player_movecollide();

// COMBAT ------------------------------------------------------------------------------|

if (!menu_open && input_B2_p)
    {
    attacking = true;
    alarm_set(0, 12);
    alarm_set(1, 24);
    }

// SPECIAL PLAYER STATES ---------------------------------------------------------------|

// Running state
if (input_B1 && grounded) running = 1; else running = 0;
    
// ANIMATION ---------------------------------------------------------------------------|

scr_player_animate();
