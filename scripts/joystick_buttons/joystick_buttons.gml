function joystick_buttons(arg0)
{
    var jid = __joystick_2_gamepad(arg0);
    return gamepad_button_count(jid);
}
