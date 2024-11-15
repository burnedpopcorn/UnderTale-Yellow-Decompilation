var random_pitch;

x += x_speed;

if (x_speed > 0)
{
    if (bbox_left > obj_dialogue_box_battle_transformation_any.bbox_right)
    {
        instance_destroy();
        exit;
    }
}
else if (bbox_right < obj_dialogue_box_battle_transformation_any.bbox_left)
{
    instance_destroy();
    exit;
}

if (image_index != 0)
{
    bounce_sound_can_check = true;
}
else if (bounce_sound_can_check == true)
{
    bounce_sound_execute = true;
    bounce_sound_can_check = false;
}

if (bounce_sound_execute == true)
{
    random_pitch = irandom_range(-1, 1);
    audio_play_sound(snd_trihecta_small_ball_bounce, 20, 0);
    audio_sound_pitch(snd_trihecta_small_ball_bounce, 1 + (random_pitch * 0.3));
    bounce_sound_execute = false;
}
