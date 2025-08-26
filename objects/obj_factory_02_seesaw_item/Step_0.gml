if (live_call())
    return global.live_result;

if (destroy_self)
{
    var new_item = instance_create_depth(x, y, depth, obj_factory_02_item_destroy);
    new_item.sprite_index = sprite_index;
    instance_destroy();
}
