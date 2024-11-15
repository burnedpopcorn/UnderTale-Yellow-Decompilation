if (global.sworks_flag[15] == 1 || global.route != 2)
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
picture_alpha = 0;

if (global.sworks_flag[14] == 1)
{
    instance_create(408, 160, obj_ceroba_npc);
    obj_ceroba_npc.npc_direction = "down";
    scene = 27;
}

depth = -room_height - 1;
