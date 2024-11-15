instance_create(x, y, obj_flowey1);

with (obj_flowey1)
{
    sprite_index = spr_floweyrise;
    image_speed = 0.2;
}

global.flag[24] = 2;
instance_destroy();
