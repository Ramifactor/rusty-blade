///scr_playerstate_carry()

// COLLISION & PHYSICS -----------------------------------------------------------------|

// Collision
scr_player_movecollide();

// SPECIAL PLAYER STATES ---------------------------------------------------------------|

ignore_player = true; //turns off most environmental interactions & menu

if (place_meeting(x, y, obj_corpse_spawner))
    {
    with (obj_corpse_spawner)
        {
        my_spawn = instance_create(x + 6, y + 6, obj_dog_dead_2);
        spawned = true;
        }
    playerstate = STATE_PLAYER.kneel;
    instance_create (16, 16, obj_musicplayer);
    instance_create(0, 0, obj_fade_main);
    }
    
 
// ANIMATION ---------------------------------------------------------------------------|

scr_player_animate();
