image_speed = 0;
scene = 0;
cutscene_timer = 0;

if (global.sworks_flag[19] == 1)
{
    image_index = image_number - 1;
    scene = -1;
    instance_deactivate_layer("colliders_nobridge");
    instance_activate_layer("colliders_bridge");
    layer_set_visible("ast_shortcut_railing", true);
}
else
{
    instance_deactivate_layer("colliders_bridge");
    instance_activate_layer("colliders_nobridge");
    layer_y("ast_shortcut", -160);
    layer_set_visible("ast_shortcut_railing", false);
}
