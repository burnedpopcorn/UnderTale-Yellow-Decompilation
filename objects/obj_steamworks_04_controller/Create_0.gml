cutscene_timer = 0;
scene = 0;

if (global.geno_complete[3] == true)
{
    instance_destroy();
    instance_create(x, y, obj_steamworks_04_controller_geno);
    exit;
}

if (global.route == 1)
{
    instance_destroy();
    instance_create(x, y, obj_steamworks_04_controller_neutral);
    exit;
}

if (global.sworks_flag[0] == 2)
{
    actor_ceroba = instance_create(220, 405, obj_ceroba_npc);
    actor_ceroba.npc_direction = "up";
    actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
    actor_clover.npc_direction = "up";
}
else if (global.sworks_flag[0] == 3 && global.sworks_flag[1] < 3)
{
    actor_ceroba = instance_create(224, 360, obj_ceroba_npc);
    actor_ceroba.npc_direction = "up";
}
else if (global.sworks_flag[1] == 3 || global.sworks_flag[1] == 4)
{
    actor_ceroba = instance_create(224, 360, obj_ceroba_npc);
    actor_ceroba.npc_direction = "up";
    __background_set(e__BG.Index, 0, 2566);
    obj_pl.image_alpha = 0;
    scr_cutscene_start();
}
else
{
    __background_set(e__BG.Index, 0, 2566);
    instance_destroy();
}
