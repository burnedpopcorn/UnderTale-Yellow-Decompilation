if (global.route != 3 || !global.geno_complete[3])
{
    instance_destroy();
    exit;
}

if (global.dunes_flag[51] == 1)
{
    var pellets = instance_create_depth(148, 41, 0, obj_steamworks_34_pellets);
    pellets.image_index = pellets.image_number - 1;
    instance_destroy();
}

if (global.dunes_flag[51] == 2)
    instance_destroy();

scene = 0;
cutscene_timer = 0;
