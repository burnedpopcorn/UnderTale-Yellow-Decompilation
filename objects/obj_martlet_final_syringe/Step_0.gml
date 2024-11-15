var snd;

if (live_call())
    return global.live_result;

image_angle += 10;

if (y > (obj_martlet_final_body_intro.bbox_bottom - 20) && image_alpha == 1)
{
    snd = audio_play_sound(snd_glass_break_1, 1, 0);
    audio_sound_gain(snd, 0.5, 0);
    image_alpha = 0;
    part_sys = part_system_create(1);
    part_system_position(part_sys, x, y);
    alarm[0] = 90;
}
