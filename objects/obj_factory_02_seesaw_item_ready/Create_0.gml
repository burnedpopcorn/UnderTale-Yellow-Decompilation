var item_type_last, item_type_repeat_count, item_type_repeat_count_max;

if (live_call())
    return global.live_result;

item_type_last = obj_factory_02_seesaw_puzzle.conveyor_item_type_last;
item_type_repeat_count = obj_factory_02_seesaw_puzzle.conveyor_item_type_repeat_count;
item_type_repeat_count_max = obj_factory_02_seesaw_puzzle.conveyor_item_type_repeat_count_max;
destroy_self = false;
item_type = choose("blue", "red");

if (item_type == item_type_last)
{
    if (item_type_repeat_count < item_type_repeat_count_max)
    {
        obj_factory_02_seesaw_puzzle.conveyor_item_type_repeat_count += 1;
    }
    else
    {
        do
            item_type = choose("blue", "red");
        until (item_type != item_type_last);
    }
}
else
{
    obj_factory_02_seesaw_puzzle.conveyor_item_type_repeat_count = 0;
}

obj_factory_02_seesaw_puzzle.conveyor_item_type_last = item_type;
image_speed = 0;

switch (item_type)
{
    case "blue":
        sprite_index = spr_conveyor_items_blue_wrapped;
        break;
    
    case "red":
        sprite_index = spr_conveyor_items_red_wrapped;
        break;
}

scene = 0;
target_y = 110;
