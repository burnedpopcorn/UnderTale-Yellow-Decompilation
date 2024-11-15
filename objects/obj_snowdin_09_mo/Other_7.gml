if (sprite_index == spr_mo_kick_yellow)
{
    image_speed = 0;
    sprite_index = spr_mo_talk_cup;
}

if (sprite_index == spr_mo_pour1_yellow)
{
    image_speed = 0;
    sprite_index = spr_mo_talk_cup;
}

if (sprite_index == spr_mo_pour2_yellow)
{
    image_speed = 0;
    sprite_index = spr_mo_down_talk_yellow;
    waiter = 3;
}

if (sprite_index == spr_mo_snap_yellow)
{
    if (global.snowdin_flag[5] == 2)
    {
        image_speed = 0;
        sprite_index = spr_mo_down_talk_yellow;
        obj_mo_kiosk.slide = 4;
        obj_mo_menu.mo_menu_fall = 4;
    }
    else
    {
        image_speed = 0;
        sprite_index = spr_mo_down_talk_yellow;
        obj_mo_kiosk.slide = 1;
        obj_mo_menu.mo_menu_fall = 1;
        timer[2] = 15;
    }
}
