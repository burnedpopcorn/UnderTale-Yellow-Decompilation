function scr_controls_debug_battle()
{
    key_display = keyboard_check_pressed(vk_numpad0) || keyboard_check_pressed(ord("0"));
    key_reset = keyboard_check_pressed(ord("U"));
    key_fps3 = keyboard_check_pressed(ord("I"));
    key_fps30 = keyboard_check_pressed(ord("O"));
    key_fps60 = keyboard_check_pressed(ord("P"));
}
