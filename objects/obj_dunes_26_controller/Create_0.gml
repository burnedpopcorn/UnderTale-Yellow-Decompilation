scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if (global.geno_complete[3])
{
    global.dunes_flag[26] = 2;
    instance_destroy();
    exit;
}

if (global.dunes_flag[26] >= 2)
{
    instance_destroy();
    exit;
}

if (global.dunes_flag[26] == 1)
{
    scene = 24;
    instance_create(2100, 245, obj_dunes_26_bailador);
    obj_dunes_26_bailador.action_sprite = false;
    obj_dunes_26_bailador.npc_direction = "left";
    instance_create(2100, 40, obj_dunes_26_spotlight);
    obj_pl.x = 2000;
    obj_pl.y = 245;
    obj_pl.direction = 0;
}
