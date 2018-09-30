///scr_player_init();

// Player state enumeration
enum STATE_PLAYER
    {
    normal,
    combat,
    dead,
    pet,
    drink,
    kneel,
    carry
    }

playerstate = STATE_PLAYER.normal;

//Collision states
grounded = false;   // Indicates whether or not player is on solid ground
col_right = false;  // Horizontal collision
col_left = false;

//Movement
movedir_x = 1;  // Store direction of horizontal movement
hspd = 0;       // Store player x & y speeds
vspd = 0;

//Acceleration
accel_ground_def = 0.4;
accel_ground = accel_ground_def;
accel_air_def = 0.2;
accel_air = accel_air_def;

//Running (hspd)
running = false; // Running status
hspd_max_def = 1; // Default max horizontal ground speed when not running
hspd_max = hspd_max_def;
hspd_max_running = 1; // Max horizontal ground speed when running
hspd_max_air_def = 1; // Default max horizontal air speed
hspd_max_air = hspd_max_air_def;

//Falling (vspd)
vspd_max_def = 7; // Default max fall speed
vspd_max = vspd_max_def;

//Combat
attacking = false;
attack_started = false;

//Puzzles & Misc
antler_held = false;
key_held = false;
drinking = false;
drink_delay = false;

//Footsteps
can_play = false;
can_play2 = false;
fs_sound = snd_fs_stone;
timeline_index = tml_player_footstep;
timeline_running = false;

//Unmute SFX
alarm_set(2, 30);
