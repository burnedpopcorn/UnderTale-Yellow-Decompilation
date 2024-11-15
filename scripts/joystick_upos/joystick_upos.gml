function joystick_upos(argument0)
{
    var jid;
    
    jid = __joystick_2_gamepad(argument0);
    return gamepad_axis_value(jid, 4);
}
