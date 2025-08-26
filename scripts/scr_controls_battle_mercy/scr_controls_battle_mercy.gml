function scr_controls_battle_mercy()
{
    if (moveable == true)
    {
        key_right = global.right_keyp;
        key_left = global.left_keyp;
        key_down = global.down_keyp;
        key_up = global.up_keyp;
        key_select = keyboard_multicheck_pressed(vk_nokey);
        key_revert = keyboard_multicheck_pressed(vk_anykey);
    }
    else
    {
        key_down = 0;
        key_up = 0;
        key_select = 0;
        key_revert = 0;
    }
}
