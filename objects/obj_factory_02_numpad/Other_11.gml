if (live_call())
    return global.live_result;

var door = instance_create_depth(100, 160, -100, obj_doorway);

with (door)
{
    image_xscale = 2.5;
    image_yscale = 1.25;
    nextroom = rm_steamworks_factory_03;
    xx = 200;
    yy = 150;
}

layer_set_visible("door_open", true);
var wall = instance_position(120, 170, obj_wall);
instance_destroy(wall);
