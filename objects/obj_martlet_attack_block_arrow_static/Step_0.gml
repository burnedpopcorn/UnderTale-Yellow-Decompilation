var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
image_index = arrow_dir / 90;

if (place_meeting(x, y, obj_heart_battle_fighting_parent) && !is_active)
{
    is_active = true;
    audio_play_sound(snd_battle_item_eat, 1, 0);
    obj_heart_battle_fighting_parent.turn_angle_target = arrow_dir;
}

if (is_active == true)
{
    if (image_alpha > 0)
    {
        image_xscale += 0.25;
        image_yscale += 0.25;
        image_alpha -= 0.1;
    }
    
    if (cooldown_timer > 0)
    {
        cooldown_timer -= 1;
    }
    else
    {
        cooldown_timer = cooldown_timer_max;
        is_active = false;
        image_alpha = 1;
        image_xscale = 1;
        image_yscale = 1;
    }
}
else if (y > (battle_box.bbox_bottom + 10))
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}
else if (image_alpha < 1)
{
    image_alpha += 0.25;
}
