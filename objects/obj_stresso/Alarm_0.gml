trs = instance_create(0, 0, obj_transition);

with (trs)
{
    xx = 100;
    yy = 185;
    newRoom = 93;
}

instance_create(0, 0, obj_elevator_controller);
instance_destroy();
