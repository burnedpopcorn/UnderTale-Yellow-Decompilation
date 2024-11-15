instance_destroy();

if (!instance_exists(obj_transition))
    instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
