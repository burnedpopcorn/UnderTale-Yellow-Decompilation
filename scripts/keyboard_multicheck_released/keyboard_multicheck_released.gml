function keyboard_multicheck_released(arg0)
{
    if (arg0 == 0 || arg0 == 13)
    {
        if (keyboard_check_released(vk_enter) || keyboard_check_released(ord("Z")) || keyboard_check_released(ord("Y")) || gamepad_button_check_released(0, global.button1) || gamepad_button_check_released(0, gp_shoulderr))
            return true;
    }
    
    if (arg0 == 1 || arg0 == 16)
    {
        if (keyboard_check_released(vk_shift) || keyboard_check_released(ord("X")) || gamepad_button_check_released(0, global.button2) || gamepad_button_check_released(0, gp_shoulderl))
            return true;
    }
    
    if (arg0 == 2 || arg0 == 17)
    {
        if (keyboard_check_released(vk_control) || keyboard_check_released(ord("C")) || gamepad_button_check_released(0, global.button3))
            return true;
    }
}
