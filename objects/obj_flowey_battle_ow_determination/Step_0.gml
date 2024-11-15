var cymbal;

if (live_call())
    return global.live_result;

if (scr_interact() && keyboard_multicheck_pressed(0))
{
    fade_out = true;
    scr_cutscene_start();
    obj_flowey_battle_ow_controller.spawn_vines = false;
    audio_play_sound(snd_heal, 1, 0);
    
    if (global.current_hp_self < global.max_hp_self)
        global.current_hp_self = global.max_hp_self;
    
    cymbal = audio_play_sound(113, 1, 0, 0, 3);
    audio_sound_gain(cymbal, 1, 500);
}

if (fade_out == true)
{
    if (global.flowey_battle_1_phase > 3)
    {
        if (draw_alpha < 1)
            draw_alpha += 0.04;
        else if (!alarm[0])
            alarm[0] = 60;
    }
    else if (draw_alpha < 1)
    {
        draw_alpha += 0.05;
    }
    else if (!alarm[0])
    {
        alarm[0] = 30;
    }
    
    scr_screenshake(999, 4 * draw_alpha);
}
