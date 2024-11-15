function joystick_ypos(argument0)
{
    var jid;
    
    jid = __joystick_2_gamepad(argument0);
    return gamepad_axis_value(jid, 1);
}
