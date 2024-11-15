function scr_controls_battle_heart_red()
{
    if (moveable == true)
    {
        key_right = global.right_key;
        key_left = -global.left_key;
        key_down = global.down_key;
        key_up = -global.up_key;
        key_select = keyboard_multicheck(0);
        key_revert = keyboard_multicheck(1);
    }
    else
    {
        key_right = 0;
        key_left = 0;
        key_down = 0;
        key_up = 0;
        key_select = 0;
        key_revert = 0;
    }
}
