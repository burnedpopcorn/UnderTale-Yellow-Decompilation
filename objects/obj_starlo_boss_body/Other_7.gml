if (sprite_index == shoot_sprite)
{
    image_speed = 0;
    image_index = image_number - 1;
}

if (sprite_index == outro_sprite && outro_sprite_noloop == false)
{
    if (!alarm[1])
        alarm[1] = 45;
    
    image_speed = 0;
    image_index = image_number - 1;
    outro_sprite_noloop = true;
}
