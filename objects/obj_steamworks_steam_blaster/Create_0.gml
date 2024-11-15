if (live_call())
    return global.live_result;

steam_active = false;
steam_interval = 0;
steam_delay = 0;
steam_sound = snd_puzzle_icemelt;
steam_sound_played = false;
draw_alpha = 0;
draw_overlay = false;
draw_alpha_target = 0.2;
collision_counter_max = 3;
collision_counter = 3;

if (instance_exists(obj_overworld_fade_in_screen))
    alarm[2] = 15;
else
    alarm[2] = 1;
