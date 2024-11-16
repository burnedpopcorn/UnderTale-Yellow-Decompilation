scene = 0;
cutscene_timer = 0;
cutscene_music = -4;

if (global.sworks_flag[13] == 1)
{
    layer_set_visible("asset_glass_panel", false);
    instance_create_depth(obj_pl.x, 90, layer_get_depth("tiles_outside") - 50, obj_steamworks_22_axis_throwing);
    instance_create(obj_pl.x, obj_pl.y, obj_camera);
    cutscene_music = 627;
    scene = 13;
}
else if (global.sworks_flag[13] == 2)
{
    layer_set_visible("asset_glass_panel", false);
    layer_set_visible("rubble", false);
    instance_destroy();
    exit;
}

depth = -100;