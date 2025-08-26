function joystick_name(arg0)
{
    var jid = __joystick_2_gamepad(arg0);
    return gamepad_get_description(jid);
}
