///scr_global_getinput()

// Directional Input
if (keyboard_check(ord('W')) || keyboard_check(vk_up) || gamepad_button_check(0, gp_padu)) input_padU = true;
else input_padU = false;
if (keyboard_check_pressed(ord('W')) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu)) input_padU_p = true;
else input_padU_p = false;

if (keyboard_check(ord('S')) || keyboard_check(vk_down) || gamepad_button_check(0, gp_padd)) input_padD = true;
else input_padD = false;
if (keyboard_check_pressed(ord('S')) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd)) input_padD_p = true;
else input_padD_p = false;

if (keyboard_check(ord('A')) || keyboard_check(vk_left) || gamepad_button_check(0, gp_padl)) input_padL = true;
else input_padL = false;
if (keyboard_check_pressed(ord('A')) || keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl)) input_padL_p = true;
else input_padL_p = false;

if (keyboard_check(ord('D')) || keyboard_check(vk_right) || gamepad_button_check(0, gp_padr)) input_padR = true;
else input_padR = false;
if (keyboard_check_pressed(ord('D')) || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr)) input_padR_p = true;
else input_padR_p = false;

//Face buttons
if (keyboard_check(ord('Z')) || keyboard_check(190) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_face4)) input_B1 = true;
else input_B1 = false;
if (keyboard_check_pressed(ord('Z')) || keyboard_check_pressed(190) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_face4)) input_B1_p = true;
else input_B1_p = false;
if (keyboard_check_released(ord('Z')) || keyboard_check_released(190) || gamepad_button_check_released(0, gp_face2) || gamepad_button_check_released(0, gp_face4)) input_B1_r = true;
else input_B1_r = false;

if (keyboard_check(ord('X')) || keyboard_check(191) || gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face3)) input_B2 = true;
else input_B2 = false;
if (keyboard_check_pressed(ord('X')) || keyboard_check_pressed(191) || gamepad_button_check_pressed(0, gp_face1) || gamepad_button_check_pressed(0, gp_face3)) input_B2_p = true;
else input_B2_p = false;
if (keyboard_check_released(ord('X')) || keyboard_check_released(191) || gamepad_button_check_released(0, gp_face1) || gamepad_button_check_released(0, gp_face3)) input_B2_r = true;
else input_B2_r = false;
