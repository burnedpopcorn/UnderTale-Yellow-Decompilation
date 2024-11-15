if (sprite_index == spr_bowll_head_normal)
{
    for (i = 0; i < array_length_1d(spr_normal); i++)
    {
        if (stage_counter == spr_normal[i])
        {
            image_speed = image_speed_head;
            image_index = 0;
        }
    }
    
    if (stage_counter == st_normal_1)
        nostril_draw = 0;
    
    if (stage_counter == st_normal_2)
    {
        nostril_draw = 1;
        event_user(0);
    }
    
    if (stage_counter == st_normal_3)
        nostril_draw = -1;
    
    if (stage_counter >= st_normal_4)
        event_user(15);
}

if (sprite_index == spr_bowll_head_grateful)
{
    if (stage_counter == st_grateful_1)
        nostril_draw = 0;
    
    if (stage_counter == st_grateful_2)
    {
        nostril_draw = 1;
        event_user(0);
    }
    
    if (stage_counter == st_grateful_3)
        nostril_draw = -1;
    
    if (stage_counter >= st_grateful_4)
        event_user(15);
}

if (sprite_index == spr_bowll_head_critical)
{
    for (i = 0; i < array_length_1d(spr_critical); i++)
    {
        if (stage_counter == spr_critical[i])
        {
            image_speed = image_speed_head;
            image_index = 0;
        }
    }
    
    if (stage_counter == st_critical_1)
        nostril_draw = 0;
    
    if (stage_counter == st_critical_2)
    {
        nostril_draw = 1;
        event_user(0);
    }
    
    if (stage_counter == st_critical_3)
        nostril_draw = -1;
    
    if (stage_counter >= st_critical_4)
        event_user(15);
}
