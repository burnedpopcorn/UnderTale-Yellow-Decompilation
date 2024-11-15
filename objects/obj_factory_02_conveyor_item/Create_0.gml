var item_type_last, item_type_repeat_count, item_type_repeat_count_max;

if (live_call())
    return global.live_result;

item_type_last = obj_factory_02_conveyor_puzzle.conveyor_item_type_last;
item_type_repeat_count = obj_factory_02_conveyor_puzzle.conveyor_item_type_repeat_count;
item_type_repeat_count_max = obj_factory_02_conveyor_puzzle.conveyor_item_type_repeat_count_max;
item_type = choose("trash", "blue", "red");

if (item_type == item_type_last)
{
    if (item_type_repeat_count < item_type_repeat_count_max)
    {
        obj_factory_02_conveyor_puzzle.conveyor_item_type_repeat_count += 1;
    }
    else
    {
        do
            item_type = choose("trash", "blue", "red");
        until (item_type != item_type_last);
    }
}
else
{
    obj_factory_02_conveyor_puzzle.conveyor_item_type_repeat_count = 0;
}

obj_factory_02_conveyor_puzzle.conveyor_item_type_last = item_type;

if (obj_factory_02_conveyor_puzzle.conveyor_puzzle_active == false)
    item_type = "trash";

destroy_self = false;

switch (item_type)
{
    case "trash":
        sprite_index = spr_conveyor_items_trash;
        image_index = irandom_range(0, image_number - 1);
        break;
    
    case "blue":
        sprite_index = choose(spr_conveyor_items_blue, spr_conveyor_item_blue_1);
        
        if (sprite_index == spr_conveyor_items_blue)
            image_index = irandom_range(0, image_number - 1);
        
        break;
    
    case "red":
        sprite_index = spr_conveyor_items_red;
        image_index = irandom_range(0, image_number - 1);
        break;
}

hsp_base = 1.5;
hspeed = -hsp_base;
hspeed_old = 0;
vspeed_old = 0;
item_wrap = false;
item_wrap_correct = false;
item_throw_noloop = false;
stage = 0;
vspeed_max = 6;
image_speed = 0;
