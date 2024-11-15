var new_item;

new_item = instance_create_depth(x, y, depth, obj_factory_02_seesaw_item);

with (new_item)
{
    sprite_index = other.sprite_index;
    image_index = other.image_index;
    item_type = other.item_type;
}

instance_destroy();
