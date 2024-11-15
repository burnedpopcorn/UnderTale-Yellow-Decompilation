var new_item;

if (live_call())
    return global.live_result;

if (destroy_self)
{
    new_item = instance_create_depth(x, y, depth, obj_factory_02_item_destroy);
    new_item.sprite_index = sprite_index;
    instance_destroy();
    exit;
}

if (y < target_y)
    y += 1;
else if (!alarm[0])
    alarm[0] = 15;

x = xstart + irandom_range(-2, 2);
