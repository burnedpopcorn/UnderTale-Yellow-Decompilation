function scr_controls_battle_main()
{
    if (image_alpha == 0)
    {
        moveable = false;
        no_loop_moveable = false;
    }
    
    if (image_alpha == 1 && no_loop_moveable == false)
    {
        alarm[0] = 2;
        no_loop_moveable = true;
    }
    
    if (image_alpha == 1)
    {
        key_right = global.right_keyp;
        key_left = global.left_keyp;
    }
    else
    {
        key_right = 0;
        key_left = 0;
    }
    
    if (image_alpha == 1 && moveable == true)
        key_select = keyboard_multicheck_pressed(0);
    else
        key_select = 0;
}
