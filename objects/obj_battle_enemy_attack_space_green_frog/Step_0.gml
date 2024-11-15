if (place_meeting(x, y, obj_heart_battle_fighting_parent))
{
    obj_macro_frog_counter.frog_scale = 1.5;
    obj_macro_frog_counter.frog_count--;
    audio_play_sound(snd_heal, 1, 0);
    instance_destroy();
}

image_angle += 10;
