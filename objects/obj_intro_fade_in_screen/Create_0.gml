image_alpha = 0;
fade_speed = 0.05;
audio_sound_gain(mus_intro, 0, 600);

if (instance_exists(obj_intro_text))
{
    with (obj_intro_text)
        instance_destroy();
}
