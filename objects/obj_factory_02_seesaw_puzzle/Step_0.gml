var speed_modifier, strikes;

if (live_call())
    return global.live_result;

speed_modifier = 1 + ((1 - (seesaw_item_number / seesaw_item_number_max)) * 1.5);

if (seesaw_puzzle_activate == true)
{
    seesaw_puzzle_activate = false;
    alarm[1] = 30;
}

if (seesaw_puzzle_active == true)
{
    if (seesaw_item_offset > 0)
    {
        seesaw_item_offset--;
    }
    else
    {
        seesaw_item_offset = seesaw_item_offset_max / speed_modifier;
        seesaw_spawn_item = true;
    }
    
    if (global.left_key)
    {
        if (obj_seesaw.phy_rotation > -seesaw_angle_max)
            obj_seesaw.phy_rotation -= 1;
    }
    
    if (global.right_key)
    {
        if (obj_seesaw.phy_rotation < seesaw_angle_max)
            obj_seesaw.phy_rotation += 1;
    }
    
    obj_seesaw_light.image_angle = -obj_seesaw.phy_rotation;
    
    with (obj_steamworks_factory_02_face)
    {
        sprite_index = spr_steamworks_38_face_numbers;
        image_index = other.seesaw_item_number - 1;
        image_speed = 0;
    }
    
    if (hint_button_alpha < 1)
        hint_button_alpha += 0.1;
}
else if (hint_button_alpha > 0)
{
    hint_button_alpha -= 0.2;
}

if (seesaw_spawn_item && !instance_exists(obj_factory_02_seesaw_item_ready))
{
    audio_play_sound(snd_factory_puzzle_spawn_item, 1, 0);
    instance_create_depth(360, 90, -1000, obj_factory_02_seesaw_item_ready);
    seesaw_spawn_item = false;
}

strikes = 3 - seesaw_item_number_wrong;

with (obj_factory_02_conveyor_indicator)
{
    if (strikes >= indicator_flag && sprite_index != spr_conveyor_indicator_red_x)
        sprite_index = spr_conveyor_indicator_red_x;
}

if (strikes == 3)
{
    if (!alarm[0])
        alarm[0] = 30;
    
    seesaw_puzzle_active = false;
    
    with (obj_conveyor_belt)
    {
        image_index = 0;
        image_speed = 0;
    }
    
    with (obj_factory_02_conveyor_item)
        destroy_self = true;
}

if (seesaw_item_number <= 0 || seesaw_item_number_wrong <= 0)
{
    instance_destroy();
    
    with (obj_steamworks_factory_02_face)
    {
        sprite_index = spr_steamworks_38_face_hello;
        image_index = 0;
        image_speed = 1;
    }
    
    with (obj_factory_02_seesaw_item_ready)
        destroy_self = true;
    
    with (obj_factory_02_seesaw_item)
        destroy_self = true;
}
