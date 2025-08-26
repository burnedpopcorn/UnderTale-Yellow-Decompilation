var attack_missed = false;

if (instance_exists(obj_text_damage_count))
{
    with (obj_text_damage_count)
        instance_destroy();
}

if (instance_exists(obj_text_miss))
{
    attack_missed = true;
    
    with (obj_text_miss)
        instance_destroy();
}

with (obj_target_bar_battle)
    instance_destroy();

if (instance_exists(obj_battle_hp_enemy_attacking_parent))
{
    with (obj_battle_hp_enemy_attacking_parent)
        instance_destroy();
}

if (global.current_hp_enemy_2 < 0)
    global.current_hp_enemy_2 = 0;

if (global.current_hp_enemy_2 == 0)
{
    var enemy_count = global.enemy_count;
    global.enemy_dead_2 = true;
    
    if (enemy_count == 2)
    {
        if (global.enemy_dead == true || global.enemy_spared == true)
        {
            with (obj_battle_generator)
                audio_extend = false;
            
            audio_stop_all();
            instance_create(0, 0, obj_dialogue_battle_win_enemy);
            audio_play_sound(snd_monster_damage_death, 20, false);
        }
        else
        {
            global.enemy_sparing_2 = false;
            scr_determine_special_effect_enemy("Fight 2");
            global.important_cutscene = script_execute(scr_determine_important_cutscene_attacking);
            global.can_attack = script_execute(scr_determine_can_attack_attacking);
            
            if (global.important_cutscene == false && global.can_attack == true)
                global.enemy_attacking = true;
            
            if (global.can_attack == false)
            {
                with (obj_dialogue_box_battle)
                    no_loop_can_attack = false;
            }
        }
    }
    else if (enemy_count == 3)
    {
        if ((global.enemy_dead == true || global.enemy_spared == true) && (global.enemy_dead_3 == true || global.enemy_spared_3 == true))
        {
            with (obj_battle_generator)
                audio_extend = false;
            
            audio_stop_all();
            instance_create(0, 0, obj_dialogue_battle_win_enemy);
            audio_play_sound(snd_monster_damage_death, 20, false);
        }
        else
        {
            global.enemy_sparing_2 = false;
            scr_determine_special_effect_enemy("Fight 2");
            global.important_cutscene = script_execute(scr_determine_important_cutscene_attacking);
            global.can_attack = script_execute(scr_determine_can_attack_attacking);
            
            if (global.important_cutscene == false && global.can_attack == true)
                global.enemy_attacking = true;
            
            if (global.can_attack == false)
            {
                with (obj_dialogue_box_battle)
                    no_loop_can_attack = false;
            }
        }
    }
}
else
{
    if (!attack_missed)
        global.enemy_sparing_2 = false;
    
    scr_determine_special_effect_enemy("Fight 2");
    global.important_cutscene = script_execute(scr_determine_important_cutscene_attacking);
    global.can_attack = script_execute(scr_determine_can_attack_attacking);
    
    if (global.important_cutscene == false && global.can_attack == true)
        global.enemy_attacking = true;
    
    if (global.can_attack == false)
    {
        with (obj_dialogue_box_battle)
            no_loop_can_attack = false;
    }
}

instance_destroy();
