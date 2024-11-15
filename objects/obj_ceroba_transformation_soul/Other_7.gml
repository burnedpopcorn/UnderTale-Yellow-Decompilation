if (sprite_index == spr_heart_yellow_ready)
{
    sprite_index = spr_heart_yellow_hold;
    image_index = 0;
    image_speed = 1;
}

if (sprite_index == spr_heart_yellow_shoot)
{
    sprite_index = spr_heart_yellow_up;
    image_index = 0;
    image_speed = 0;
}
