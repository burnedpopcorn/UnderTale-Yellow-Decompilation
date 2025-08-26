if (live_call())
    return global.live_result;

image_alpha = 0;
image_speed = 0;
image_index = image_number - 1;
alarm[0] = 1;

if (!audio_is_playing(snd_monster_damage_death))
    audio_play_sound(snd_monster_damage_death, 20, 0);

var red_tint = make_colour_rgb(215, 166, 166);
image_blend = red_tint;
instance_create_depth(x + 49, y - 60, depth + 1, obj_ceroba_dead_pacifist_staff);
instance_create_depth(x + 64, y + 44, depth + 2, obj_ceroba_dead_pacifist_mask);
