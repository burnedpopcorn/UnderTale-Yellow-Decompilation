function scr_stick_press()
{
    down_stick = 0;
    left_stick = 0;
    up_stick = 0;
    right_stick = 0;
    
    if (gamepad_axis_value(0, gp_axislv) > global.gamepad_deadzone && global.down_pressed == 0)
    {
        down_stick = 1;
        global.down_pressed = 1;
    }
    else
    {
        down_stick = 0;
    }
    
    if (gamepad_axis_value(0, gp_axislv) < -global.gamepad_deadzone && global.up_pressed == 0)
    {
        up_stick = 1;
        global.up_pressed = 1;
    }
    else
    {
        up_stick = 0;
    }
    
    if (gamepad_axis_value(0, gp_axislh) < -global.gamepad_deadzone && global.left_pressed == 0)
    {
        left_stick = 1;
        global.left_pressed = 1;
    }
    else
    {
        left_stick = 0;
    }
    
    if (gamepad_axis_value(0, gp_axislh) > global.gamepad_deadzone && global.right_pressed == 0)
    {
        right_stick = 1;
        global.right_pressed = 1;
    }
    else
    {
        right_stick = 0;
    }
    
    if (gamepad_axis_value(0, gp_axislh) > -global.gamepad_deadzone && gamepad_axis_value(0, gp_axislh) < global.gamepad_deadzone)
    {
        global.left_pressed = 0;
        global.right_pressed = 0;
    }
    
    if (gamepad_axis_value(0, gp_axislv) > -global.gamepad_deadzone && gamepad_axis_value(0, gp_axislv) < global.gamepad_deadzone)
    {
        global.up_pressed = 0;
        global.down_pressed = 0;
    }
}
