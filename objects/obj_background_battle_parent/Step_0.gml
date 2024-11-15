if (custom_fade_direction == "out")
{
    if (image_alpha > custom_fade_alpha)
        image_alpha -= custom_fade_rate;
}
else if (custom_fade_direction == "in")
{
    if (image_alpha < global.image_alpha_enemy_attacking)
    {
        image_alpha += custom_fade_rate;
        
        if (image_alpha >= global.image_alpha_enemy_attacking)
            custom_fade_direction = "nothing";
    }
}
else
{
    image_alpha = global.image_alpha_enemy_attacking;
}

event_user(1);
