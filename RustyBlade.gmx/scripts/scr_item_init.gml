///scr_item_init();

//Collision states
grounded = 0;   // Indicates whether or not player is on solid ground
col_right = 0;  // Horizontal collision
col_left = 0;

//Movement
movedir_x = 1;  // Store direction of horizontal movement
hspd = 0;       // Store player x & y speeds
vspd = 0;

//hspd
hspd_max_def = 4; // Default max horizontal ground speed when not running
hspd_max = hspd_max_def;
hspd_max_air_def = 4; // Default max horizontal air speed
hspd_max_air = hspd_max_air_def;

//Falling (vspd)
vspd_max_def = 7; // Default max fall speed
vspd_max = vspd_max_def;

//Interaction
player_here = false;
