vulnerable = false;
global.hit_self = true;

if (global.current_pp_self > 0)
{
    instance_create(x, y, obj_heart_battle_effect_expand);
    
    for (i = 0; i < 5; i++)
        instance_create(x, y, obj_heart_battle_effect_shard);
    
    global.current_pp_self -= 1;
    audio_play_sound(snd_mirrorbreak1, 20, false);
}
else
{
    if (damage_number == 1)
        global.current_hp_self -= damage;
    else if (damage_number == 2)
        global.current_hp_self -= damage_2;
    else if (damage_number == 3)
        global.current_hp_self -= damage_3;
    
    audio_play_sound(snd_hurt, 20, false);
    
    if (global.option_screenshake_toggle == true)
        instance_create(0, 0, obj_screenshake_hurt);
}

alarm[0] = global.invulnerability_self;
