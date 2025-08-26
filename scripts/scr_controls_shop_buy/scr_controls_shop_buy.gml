function scr_controls_shop_buy()
{
    key_down = global.down_keyp;
    key_up = global.up_keyp;
    key_select = keyboard_multicheck_pressed(vk_nokey);
    key_revert = keyboard_multicheck_pressed(vk_anykey);
}
