if (sprite_index == spr_martlet_p_full_fly_begin || sprite_index == spr_martlet_g_full_fly_begin)
{
    if (sprite_index == spr_martlet_p_full_fly_begin)
        sprite_index = spr_martlet_p_full_fly_during;
    else
        sprite_index = spr_martlet_g_full_fly_during;
    
    image_speed = image_speed_during;
    image_index = image_index_during_s;
}

if (sprite_index == spr_martlet_p_full_fly_end || sprite_index == spr_martlet_g_full_fly_end)
    instance_destroy();
