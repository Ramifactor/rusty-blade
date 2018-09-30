///scr_player_footstep1()

if (place_meeting(x, y + 2, obj_ground_snow))
    {
    fs_sound = snd_fs_snow;
    }
else if (place_meeting(x, y + 2, obj_ground_stone))
    {
    fs_sound = snd_fs_stone;
    }
else 
    {
    fs_sound = snd_fs_wood;
    }

if (can_play)
    {
    audio_play_sound(fs_sound, 10, false);
    can_play = false;
    }

can_play2 = true;
