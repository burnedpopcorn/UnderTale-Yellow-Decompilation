function scr_controls_battle_heart_yellow_rhythm()
{
    scr_get_input();
    
    if (moveable == true)
    {
        key_right = global.right_key;
        key_left = global.left_key;
        key_select = keyboard_multicheck_pressed(0);
    }
    else
    {
        key_right = 0;
        key_left = 0;
        key_select = 0;
        key_revert = 0;
    }
}
