function scr_controls_debug_overworld()
{
    if (obj_frisk.moveable == true && global.text_box_open == false && global.battle_start == false)
    {
        key_left = keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(ord("1"));
        key_right = keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(ord("2"));
        key_select = keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(ord("3"));
        key_left2 = keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(ord("4"));
        key_right2 = keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(ord("5"));
        key_select2 = keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(ord("6"));
    }
    else
    {
        key_display = 0;
        key_left = 0;
        key_right = 0;
        key_select = 0;
        key_left2 = 0;
        key_right2 = 0;
        key_select2 = 0;
    }
    
    key_display = keyboard_check_pressed(vk_numpad0) || keyboard_check_pressed(ord("0"));
    key_reset = keyboard_check_pressed(ord("U"));
    key_fps3 = keyboard_check_pressed(ord("I"));
    key_fps30 = keyboard_check_pressed(ord("O"));
    key_fps60 = keyboard_check_pressed(ord("P"));
}
