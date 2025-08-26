function joystick_xpos(arg0)
{
    var jid = __joystick_2_gamepad(arg0);
    return gamepad_axis_value(jid, 0);
}
