if (global.sworks_flag[3] > 0)
{
    tile_layer_hide(-1000);
    instance_destroy();
    exit;
}

if (global.route == 1)
{
    instance_create(x, y, obj_cutscene_steamworks_12_neutral);
    instance_destroy();
    exit;
}

if (global.route == 3)
{
    instance_create(x, y, obj_cutscene_steamworks_12_geno);
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
