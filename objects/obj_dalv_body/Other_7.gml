if (cloak_direction == 1 && sprite_index == spr_dalv_body_open)
{
    image_speed = 0;
    image_index = image_number - 1;
    cloak_out = true;
}
else if (cloak_direction == 2)
{
    with (obj_background_battle_parent)
    {
        custom_fade_direction = "in";
        custom_fade_alpha = 0;
        custom_fade_rate = 0.05;
    }
    
    with (obj_dialogue_box_battle_transformation_any)
        event_user(0);
    
    cloak_direction = 0;
}
