function scr_controls_battle_heart_blue_right()
{
    if (global.player_1_using_keyboard == true && moveable == true)
    {
        key_right = keyboard_check(global.player_1_control_keyboard_right);
        key_left = keyboard_check(global.player_1_control_keyboard_left);
        key_down = keyboard_check(global.player_1_control_keyboard_down);
        key_up = -keyboard_check(global.player_1_control_keyboard_up);
        key_left_release = keyboard_check_released(global.player_1_control_keyboard_left);
        key_select = keyboard_check_pressed(global.player_1_control_keyboard_button_1) || keyboard_check_pressed(global.player_1_control_keyboard_button_4);
        key_revert = keyboard_check(global.player_1_control_keyboard_button_2) || keyboard_check(global.player_1_control_keyboard_button_5);
    }
    else if (global.player_1_using_gamepad == true && moveable == true)
    {
        key_right = gamepad_button_check(0, global.player_1_control_gamepad_right);
        key_left = gamepad_button_check(0, global.player_1_control_gamepad_left);
        key_down = gamepad_button_check(0, global.player_1_control_gamepad_down);
        key_up = -gamepad_button_check(0, global.player_1_control_gamepad_up);
        key_left_release = gamepad_button_check_released(0, global.player_1_control_gamepad_left);
        key_select = gamepad_button_check_pressed(0, global.player_1_control_gamepad_button_1) || gamepad_button_check_pressed(0, global.player_1_control_gamepad_button_4);
        key_revert = gamepad_button_check(0, global.player_1_control_gamepad_button_2) || gamepad_button_check(0, global.player_1_control_gamepad_button_5);
    }
    else
    {
        key_right = 0;
        key_left = 0;
        key_down = 0;
        key_up = 0;
        key_left_release = 0;
        key_select = 0;
        key_revert = 0;
    }
}
