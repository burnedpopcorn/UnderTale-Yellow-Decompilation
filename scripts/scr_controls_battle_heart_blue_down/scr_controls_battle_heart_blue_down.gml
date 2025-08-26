function scr_controls_battle_heart_blue_down()
{
    key_right = global.right_key;
    key_left = global.left_key;
    key_down = global.down_key;
    key_up = global.up_key;
    key_up_release = up_keyr;
    key_select = keyboard_multicheck_pressed(vk_nokey);
    key_revert = keyboard_multicheck_pressed(vk_anykey);
}
