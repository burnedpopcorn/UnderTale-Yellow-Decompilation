if (global.ruins_flag[2] == 1)
{
    instance_destroy();
    instance_destroy(obj_door);
    obj_switch1.image_index = 1;
    exit;
}

instance_create(124, 124, obj_toriel_npc);
scene = 0;
cutscene_timer = 0;
scr_cutscene_start();
obj_pl.direction = 90;
