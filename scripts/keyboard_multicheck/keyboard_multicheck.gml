function keyboard_multicheck(arg0)
{
    if (arg0 == 0 || arg0 == 13)
    {
        if (keyboard_check(vk_enter) || keyboard_check(ord("Z")) || keyboard_check(ord("Y")) || gamepad_button_check(0, global.button1) || gamepad_button_check(0, gp_shoulderr))
            return true;
    }
    
    if (arg0 == 1 || arg0 == 16)
    {
        if (keyboard_check(vk_shift) || keyboard_check(ord("X")) || gamepad_button_check(0, global.button2) || gamepad_button_check(0, gp_shoulderl))
            return true;
    }
    
    if (arg0 == 2 || arg0 == 17)
    {
        if (keyboard_check(vk_control) || keyboard_check(ord("C")) || gamepad_button_check(0, global.button3))
            return true;
    }
    
    return false;
}
