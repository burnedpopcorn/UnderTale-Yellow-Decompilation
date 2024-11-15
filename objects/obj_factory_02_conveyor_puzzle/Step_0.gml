var spawn_modifier, strikes;

if (live_call())
    return global.live_result;

spawn_modifier = 1 + ((1 - (conveyor_item_number / conveyor_item_number_max)) * 1.5);

if (conveyor_puzzle_activate == true)
{
    conveyor_puzzle_activate = false;
    alarm[1] = 30;
}

if (conveyor_puzzle_active == true)
{
    if (conveyor_item_offset > 0)
    {
        conveyor_item_offset--;
    }
    else
    {
        conveyor_item_offset = conveyor_item_offset_max / spawn_modifier;
        conveyor_spawn_item = true;
    }
    
    if (keyboard_multicheck_pressed(0))
    {
        with (obj_conveyor_stamp_blue)
        {
            if (object_index != obj_conveyor_stamp_red)
                activate = true;
        }
    }
    
    if (keyboard_multicheck_pressed(1))
        obj_conveyor_stamp_red.activate = true;
    
    with (obj_steamworks_factory_02_face)
    {
        sprite_index = spr_steamworks_38_face_numbers;
        image_index = other.conveyor_item_number - 1;
        image_speed = 0;
    }
    
    if (hint_button_alpha < 1)
        hint_button_alpha += 0.1;
}
else if (hint_button_alpha > 0)
{
    hint_button_alpha -= 0.2;
}

if (conveyor_spawn_item)
{
    if ((global.fun_value >= 11 && global.fun_value <= 15) && global.sworks_flag[56] == 0)
        conveyor_item_secret--;
    
    if (conveyor_item_secret == 0)
    {
        conveyor_item_secret = -1;
        audio_play_sound(snd_factory_puzzle_spawn_item, 1, 0);
        instance_create_depth(420, 590, 950, obj_factory_02_conveyor_item_dog);
        conveyor_spawn_item = false;
        global.sworks_flag[56] = 1;
    }
    else
    {
        audio_play_sound(snd_factory_puzzle_spawn_item, 1, 0);
        instance_create_depth(420, 590, 950, obj_factory_02_conveyor_item);
        conveyor_spawn_item = false;
    }
}

strikes = 3 - conveyor_item_number_wrong;

with (obj_factory_02_conveyor_indicator)
{
    if (strikes >= indicator_flag && sprite_index != spr_conveyor_indicator_red_x)
        sprite_index = spr_conveyor_indicator_red_x;
}

if (strikes == 3)
{
    if (!alarm[0])
        alarm[0] = 30;
    
    conveyor_puzzle_active = false;
    
    with (obj_conveyor_belt)
    {
        image_index = 0;
        image_speed = 0;
    }
    
    with (obj_factory_02_conveyor_item)
        destroy_self = true;
}

if (conveyor_item_number <= 0 || conveyor_item_number_wrong <= 0)
{
    with (obj_conveyor_belt)
    {
        image_index = 0;
        image_speed = 0;
    }
    
    instance_destroy();
    
    with (obj_factory_02_conveyor_item)
        destroy_self = true;
    
    with (obj_steamworks_factory_02_face)
    {
        sprite_index = spr_steamworks_38_face_hello;
        image_index = 0;
        image_speed = 1;
    }
}
