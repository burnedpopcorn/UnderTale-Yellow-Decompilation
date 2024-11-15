if (transformed == true)
{
    if (sprite_index != spr_crispy_scroll_spared)
        sprite_index = spr_crispy_scroll_spared;
    
    x += transformed_speed;
    image_angle += transformed_rotation_speed;
    
    if (x <= (0 - (sprite_width / 2)))
    {
        scr_auto_spare_enemy_solo(1);
        instance_destroy();
    }
}
