if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if ((global.route != 2 && global.sworks_flag[58] == 0) || global.geno_complete[3])
{
    instance_destroy();
    exit;
}

if (global.sworks_flag[31] >= 3)
{
    instance_create(0, 0, obj_steamworks_35_cutscene_pacifist_alt);
    instance_destroy();
    exit;
}

if (global.sworks_flag[31] == 0)
{
    scr_cutscene_start();
    scr_follower_into_actor();
    global.party_member = -4;
    obj_pl.x = 1260;
    obj_pl.y = 140;
    instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
    actor_follower.x = obj_pl.x + 40;
    actor_follower.y = obj_pl.y;
    
    with (105643)
        y -= 80;
}

if (global.sworks_flag[31] == 1)
{
    instance_destroy(obj_steamworks_35_trashcan);
    scene = 50;
}

if (global.sworks_flag[31] >= 2)
{
    instance_destroy(obj_steamworks_35_trashcan);
    scene = 83;
    instance_destroy(obj_axis_npc);
    exit;
}

actor_axis = 1166;
