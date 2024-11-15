if (global.geno_complete[3] == true)
    instance_create_depth(x, y, 0, obj_steamworks_29_controller_geno);
else if (global.route == 2)
    instance_create_depth(x, y, 0, obj_steamworks_29_controller_pacifist);
else if (global.route == 1)
    instance_create_depth(x, y, 0, obj_steamworks_29_controller_neutral);

instance_destroy();
