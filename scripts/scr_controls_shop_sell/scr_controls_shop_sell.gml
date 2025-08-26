function scr_controls_shop_sell()
{
    key_down = global.down_keyp;
    key_up = global.up_keyp;
    key_right = global.right_keyp;
    key_left = global.left_keyp;
    key_select = keyboard_multicheck_pressed(vk_nokey);
    key_revert = keyboard_multicheck_pressed(vk_anykey);
}
