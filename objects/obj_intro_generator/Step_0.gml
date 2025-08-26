if (!instance_exists(obj_intro_fade_screen))
{
    if (keyboard_multicheck_pressed(vk_nokey) && !instance_exists(obj_intro_fade_in_screen))
        instance_create(0, 0, obj_intro_fade_in_screen);
}
else if (instance_exists(obj_intro_fade_screen))
{
    if (keyboard_multicheck_pressed(vk_nokey) && obj_intro_fade_screen.slide_count < 11 && !instance_exists(obj_intro_fade_in_screen))
        instance_create(0, 0, obj_intro_fade_in_screen);
}
