if (global.sworks_flag[1] >= 1)
{
    tile_layer_shift(1000001, 80, 0);
    tile_layer_shift(1000003, 80, 0);
}

if (global.sworks_flag[1] < 3)
{
    instance_create(0, 0, obj_steamworks_metal_sounds);
    instance_create(0, 0, obj_vignette);
}
else
{
    tile_layer_hide(1000000);
    tile_layer_hide(1000001);
}
