function scr_controls_battle_target_2()
{
    if (x >= 53 && x <= 585 && button_pressed == false)
        key_select = keyboard_multicheck(vk_nokey);
    else
        key_select = 0;
}
