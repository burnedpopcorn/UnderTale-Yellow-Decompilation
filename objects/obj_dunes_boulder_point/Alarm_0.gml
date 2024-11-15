with (instance_create(x, y, obj_dunes_boulders))
{
    y_target = other.y;
    y = y_target - 300;
}

alarm[0] = irandom_range(40, 50);
