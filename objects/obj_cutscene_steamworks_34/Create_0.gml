if (global.sworks_flag[29] == 2)
{
    var pellets = instance_create_depth(370, 124, 0, obj_steamworks_34_pellets);
    pellets.image_index = pellets.image_number - 1;
}

if (global.sworks_flag[29] >= 2 || global.route == 2 || global.route == 3 || global.sworks_flag[31] > 0)
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
