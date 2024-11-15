scene = 0;
cutscene_timer = 0;
cutscene_music = -4;

if (global.geno_complete[3] == true)
{
    layer_set_visible("rubble", false);
    instance_destroy();
    exit;
}

if (global.route == 1)
{
    instance_create(x, y, obj_steamworks_22_controller_neutral);
    instance_destroy();
    exit;
}

if (global.sworks_flag[13] == 1)
{
    layer_set_visible("asset_glass_panel", false);
    instance_create_depth(clamp(obj_pl.x, 0, 1860), 90, layer_get_depth("tiles_outside") - 50, obj_steamworks_22_axis_throwing);
    instance_create(obj_pl.x, obj_pl.y, obj_camera);
    instance_create(60, 120, obj_ceroba_npc);
    obj_ceroba_npc.npc_direction = "right";
    cutscene_music = 627;
    scene = 16;
}
else if (global.sworks_flag[13] == 2)
{
    layer_set_visible("asset_glass_panel", false);
    layer_set_visible("rubble", false);
    instance_destroy();
    exit;
}

energy_ball_deflect_noloop = false;
depth = -100;
