if (global.ruins_flag[0] == 2)
{
    instance_destroy();
    exit;
}

if (global.ruins_flag[0] == 1)
{
    instance_create(160, 240, obj_toriel_npc);
    obj_pl.x = 160;
    obj_pl.direction = 90;
    global.cutscene = true;
}

scene = 0;
