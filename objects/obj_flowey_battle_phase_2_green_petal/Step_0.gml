if (live_call())
    return global.live_result;

if (place_meeting(x, y, obj_heart_battle_fighting_yellow_final))
{
    audio_play_sound(snd_heal, 1, 0);
    instance_destroy();
    
    if (global.current_hp_self > global.max_hp_self)
        exit;
    
    global.current_hp_self += heal_amount;
    
    if (global.current_hp_self > global.max_hp_self)
        global.current_hp_self = global.max_hp_self;
}
