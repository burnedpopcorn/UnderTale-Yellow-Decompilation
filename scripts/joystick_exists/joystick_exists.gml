function joystick_exists(arg0)
{
    var jid = __joystick_2_gamepad(arg0);
    return gamepad_is_connected(jid);
}
