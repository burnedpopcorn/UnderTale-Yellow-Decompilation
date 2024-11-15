if (sprite_index == spr_hoodoff)
{
    image_speed = 0;
    image_index = 18;
}

if (sprite_index == spr_dalv_npc_boards_pacifist || sprite_index == spr_dalv_npc_boards_neutral)
{
    sprite_index = cdalv_down;
    image_speed = 0;
    image_index = 0;
    waiter++;
}
