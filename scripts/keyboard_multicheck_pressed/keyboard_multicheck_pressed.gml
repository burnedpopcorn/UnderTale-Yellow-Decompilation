function keyboard_multicheck_pressed(arg0)
{
    if (arg0 == 0 || arg0 == 13)
    {
        if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("Y")) || gamepad_button_check_pressed(0, global.button1) || gamepad_button_check_pressed(0, gp_shoulderr))
            return true;
    }
    
    if (arg0 == 1 || arg0 == 16)
    {
        if (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, global.button2) || gamepad_button_check_pressed(0, gp_shoulderl))
            return true;
    }
    
    if (arg0 == 2 || arg0 == 17)
    {
        if (keyboard_check_pressed(vk_control) || keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, global.button3))
            return true;
    }
    
    return false;
}
