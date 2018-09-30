///scr_playerstate_normal()

// COLLISION & PHYSICS -----------------------------------------------------------------|

// Collision
scr_player_movecollide();

// SPECIAL PLAYER STATES ---------------------------------------------------------------|

if (!menu_open && input_B2_p && !drinking && !drink_delay && !obj_dog_bone.held_player)
    {
    hspd = 0;
    drinking = true;
    audio_play_sound(snd_mug_sip, 10, false);
    playerstate = STATE_PLAYER.drink;
    alarm_set(3, 60);
    }
 
// ANIMATION ---------------------------------------------------------------------------|

scr_player_animate();
