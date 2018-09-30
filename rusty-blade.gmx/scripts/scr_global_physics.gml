///scr_global_physics(*gravity, *grdfric, *airfric)

global.grav_def = 0.35 * argument0; // Acceleration due to gravity
global.grav = global.grav_def;
global.fric_ground_def = 0.25 * argument1; // Horizontal speed decay on ground
global.fric_ground = global.fric_ground_def;
global.fric_air_def = 0.1 * argument2; // Horizontal speed decay in air
global.fric_air = global.fric_air_def;
global.fric_wall = 0.3;

