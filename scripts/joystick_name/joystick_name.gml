function joystick_name(argument0)
{
    var jid;
    
    jid = __joystick_2_gamepad(argument0);
    return gamepad_get_description(jid);
}
