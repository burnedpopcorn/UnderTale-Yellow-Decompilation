if (instance_exists(obj_flowey_npc_dalvExit_genocide))
{
    obj_flowey_npc_dalvExit_genocide.image_alpha = 1;
    obj_flowey_npc_dalvExit_genocide.image_speed = 0.25;
}

if ((global.flag[21] != 1 && global.flag[17] == 1) || global.flag[17] != 1)
{
    image_speed = 0;
    
    if (sprite_index != spr_flowey_boards_genocide)
        image_index = 13;
    else
        image_index = 12;
}
else
{
    instance_destroy();
}
