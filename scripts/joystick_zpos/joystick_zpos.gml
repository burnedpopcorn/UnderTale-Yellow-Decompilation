function joystick_zpos(argument0)
{
    var jid;
    
    jid = __joystick_2_gamepad(argument0);
    return gamepad_axis_value(jid, 2);
}
