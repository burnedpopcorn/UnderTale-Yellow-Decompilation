if (live_call())
    return global.live_result;

if (fade_out == false && instance_exists(obj_battle_enemy_attack_parent))
{
    with (obj_battle_enemy_attack_parent)
    {
        image_alpha -= 0.3;
        
        if (image_alpha <= 0)
            instance_destroy();
    }
}

if (fade_out == false)
{
    camera_set_view_angle(view_camera[0], 0);
    camera_set_view_pos(view_camera[0], 0, 0);
    camera_set_view_pos(view_camera[0], irandom_range(-4, 4), irandom_range(-4, 4));
    camera_set_view_angle(view_camera[0], irandom_range(-screenshake_power, screenshake_power));
    
    if (white_overlay_alpha < 1)
    {
        white_overlay_alpha += 0.02;
        screenshake_power += 0.25;
    }
    else
    {
        camera_set_view_angle(view_camera[0], 0);
        camera_set_view_pos(view_camera[0], 0, 0);
        fade_out = true;
        draw_glitches = false;
        audio_stop_sound(glitch_sound);
    }
}
else if (white_overlay_alpha > 0)
{
    white_overlay_alpha -= 0.15;
}
else
{
    instance_destroy();
}
