function joystick_buttons(argument0)
{
    var jid;
    
    jid = __joystick_2_gamepad(argument0);
    return gamepad_button_count(jid);
}
