if (global.player_can_travel == 1)
{
    layer_set_visible("fixedbridge", true);
    layer_set_visible("brokebridge", false);
    instance_destroy(101991);
}
