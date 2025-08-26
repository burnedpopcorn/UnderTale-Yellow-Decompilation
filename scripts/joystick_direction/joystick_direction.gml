function joystick_direction(arg0)
{
    var jid = __joystick_2_gamepad(arg0);
    var haxis = gamepad_axis_value(jid, gp_axislh);
    var vaxis = gamepad_axis_value(jid, gp_axislv);
    var dir = 0;
    
    if (vaxis < -0.3)
        dir = 6;
    else if (vaxis > 0.3)
        dir = 0;
    else
        dir = 3;
    
    if (haxis < -0.3)
        dir += 1;
    else if (haxis > 0.3)
        dir += 3;
    else
        dir += 2;
    
    return 96 + dir;
}
