if (!instance_exists(obj_transition))
    transition = instance_create(x, y, obj_transition);

transition.newRoom = global.fast_travel_newroom;
transition.xx = global.fast_travel_newx;
transition.yy = global.fast_travel_newy;
