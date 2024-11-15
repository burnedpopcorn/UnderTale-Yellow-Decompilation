if (global.ruins_flag[3] == 0)
{
    scr_cutscene_start();
    obj_pl.direction = 90;
    instance_create(140, 140, obj_toriel_npc);
}

scene = 0;
cutscene_timer = 0;
