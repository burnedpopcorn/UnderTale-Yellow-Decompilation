scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if (global.route != 1 || global.sworks_flag[58] == 1 || global.geno_complete[3])
{
    instance_destroy();
    exit;
}

if (global.sworks_flag[31] >= 3)
{
    obj_axis_npc.action_sprite = true;
    obj_axis_npc.sprite_index = spr_axis_down_dead_regular;
    obj_axis_npc.image_speed = false;
    instance_destroy();
    exit;
}

if (global.sworks_flag[31] == 1)
{
    obj_steamworks_35_trashcan.image_index = 1;
    scene = 28;
}

if (global.sworks_flag[31] == 2)
{
    instance_destroy();
    instance_destroy(obj_axis_npc);
    obj_steamworks_35_trashcan.image_index = 1;
    exit;
}

actor_axis = 1166;
