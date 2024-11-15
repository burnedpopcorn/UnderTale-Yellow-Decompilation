var enemy_count;

if (global.current_hp_self < 0)
    global.current_hp_self = 0;

enemy_count = global.enemy_count;

if (global.current_hp_enemy < 0)
{
    global.current_hp_enemy = 0;
}
else if (enemy_count >= 2)
{
    if (global.current_hp_enemy_2 < 0)
        global.current_hp_enemy_2 = 0;
}
else if (enemy_count >= 3)
{
    if (global.current_hp_enemy_3 < 0)
        global.current_hp_enemy_3 = 0;
}

if (global.current_pp_self > global.max_pp_self)
    global.current_pp_self = global.max_pp_self;

if (global.current_pp_self < 0)
    global.current_pp_self = 0;

if (global.current_sp_self > global.max_sp_self)
    global.current_sp_self = global.max_sp_self;

if (global.current_sp_self < 0)
    global.current_sp_self = 0;

if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true && global.image_alpha_enemy_attacking_immunity == false)
{
    if (global.image_alpha_enemy_attacking > 0.5)
    {
        global.image_alpha_enemy_attacking -= 0.05;
        
        if (global.image_alpha_enemy_attacking <= 0.5)
            global.image_alpha_enemy_attacking = 0.5;
    }
}
else if (global.image_alpha_enemy_attacking < 1)
{
    global.image_alpha_enemy_attacking += 0.05;
    
    if (global.image_alpha_enemy_attacking >= 1)
        global.image_alpha_enemy_attacking = 1;
}

if (audio_extend == true)
{
    if (!audio_is_playing(audio_initial_music))
    {
        audio_sound_gain(audio_extend_music, 0.8, 0);
        audio_play_sound(audio_extend_music, 20, true);
        audio_extend = false;
    }
}
