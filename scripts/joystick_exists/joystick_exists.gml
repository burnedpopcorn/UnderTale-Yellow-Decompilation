function joystick_exists(argument0)
{
    var jid;
    
    jid = __joystick_2_gamepad(argument0);
    return gamepad_is_connected(jid);
}
