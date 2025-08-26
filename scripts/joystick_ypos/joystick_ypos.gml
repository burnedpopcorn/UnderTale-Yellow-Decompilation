function joystick_ypos(arg0)
{
    var jid = __joystick_2_gamepad(arg0);
    return gamepad_axis_value(jid, 1);
}
