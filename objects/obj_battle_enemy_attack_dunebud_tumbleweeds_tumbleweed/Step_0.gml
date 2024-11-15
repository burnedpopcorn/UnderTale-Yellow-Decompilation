if (fade_in == true)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.2;
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            fade_in = false;
        }
    }
}

x += rolling_speed;
image_angle += rolling_speed_angle;
game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
time_elapsed += time_increase;

if (time_elapsed >= time_max)
{
    time_elapsed = 0;
    max_rise = irandom_range(bheight_min, bheight_max);
    time_max = max_rise * bheight_ratio;
}

y = default_y + animation_disjoint_y;

if (place_meeting(x, y, obj_dialogue_box_battle_transformation_any))
    can_vanish = true;

if (!place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && can_vanish == true)
{
    fade_in = false;
    
    if (image_alpha > 0)
    {
        image_alpha -= 0.2;
        
        if (image_alpha < 0)
            image_alpha = 0;
        
        if (image_alpha == 0)
            instance_destroy();
    }
}
