var door, wall;

if (live_call())
    return global.live_result;

door = instance_create_depth(100, 160, -100, obj_doorway);

with (door)
{
    image_xscale = 2.5;
    image_yscale = 1.25;
    nextroom = 238;
    xx = 200;
    yy = 150;
}

layer_set_visible("door_open", true);
wall = instance_position(120, 170, obj_wall);
instance_destroy(wall);
