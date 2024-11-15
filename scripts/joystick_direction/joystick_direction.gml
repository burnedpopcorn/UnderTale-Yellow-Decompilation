function joystick_direction(argument0)
{
    var jid, haxis, vaxis, dir;
    
    jid = __joystick_2_gamepad(argument0);
    haxis = gamepad_axis_value(jid, gp_axislh);
    vaxis = gamepad_axis_value(jid, gp_axislv);
    dir = 0;
    
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
