///scr_player_animate()
image_xscale = movedir_x; // Flip sprite when moving left

var swing, soundtoplay; //randomize sword swing sound effect
swing = irandom(1);
if (swing == 0) soundtoplay = snd_sword_swing_1;
else soundtoplay = snd_sword_swing_2;

if (playerstate == STATE_PLAYER.carry)
    {
    if (hspd == 0)
        {
        if (movedir_x == -1) sprite_index = spr_player_carry_idle_left;
        else sprite_index = spr_player_carry_idle_right;
        }
    else 
        {
        sprite_index = spr_player_carry_walk;
        image_speed = 0.1;
        }
    }
else if (playerstate == STATE_PLAYER.kneel)
    {
    sprite_index = spr_player_kneel;
    image_speed = 0.1;
    }
else if (playerstate == STATE_PLAYER.pet)
    {
    sprite_index = spr_player_pet;
    image_speed = 0.1;
    }
else if (playerstate == STATE_PLAYER.drink)
    {
    sprite_index = spr_player_drink;
    image_speed = 0.05;
    }
else if (playerstate == STATE_PLAYER.combat) 
    {
    if (attacking)
        {
        if (!attack_started)
            {
            audio_play_sound(soundtoplay, 10, false);
            sprite_index = spr_player_combat_attack;
            image_index = 0;
            image_speed = 0.2;
            }
        attack_started = true;
        }
    else if (xprevious != x)
        {
        sprite_index = spr_player_combat_walk; 
        image_speed = 0.1;
        }
    else    
        {
        sprite_index = spr_player_combat_idle;
        image_speed = 1/30;
        }
    }
else if (hspd != 0)
    {
    sprite_index = spr_player_walk; //walk
    image_speed = 0.1;
    }
else
    {
    sprite_index = spr_player_idle; //idle
    image_speed = 1/30;
    }
