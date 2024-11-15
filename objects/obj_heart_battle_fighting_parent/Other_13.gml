if (instance_exists(obj_heart_hitbox_parent))
{
    with (obj_heart_hitbox_parent)
        instance_destroy();
}

if (instance_exists(obj_heart_battle_effect_parent))
{
    with (obj_heart_battle_effect_parent)
        instance_destroy();
}

if (moveable == true && global.current_sp_self > 0)
    global.current_sp_self -= 1;

if (global.current_rp_self > 0)
{
    global.current_rp_self -= 1;
    audio_play_sound(snd_battle_item_eat, 20, false);
    
    if (global.current_hp_self > global.max_hp_self)
        exit;
    
    global.current_hp_self += 15;
    
    if (global.current_hp_self > global.max_hp_self)
        global.current_hp_self = global.max_hp_self;
}
