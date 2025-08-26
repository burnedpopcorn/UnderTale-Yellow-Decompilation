function scr_auto_spare_enemy_solo(arg0)
{
    enemy_a_dead = false;
    enemy_a_spared = false;
    enemy_b_dead = false;
    enemy_b_spared = false;
    
    if (arg0 == 1)
    {
        global.enemy_sparing = true;
        global.enemy_spared = true;
        
        if (global.enemy_count >= 2)
        {
            enemy_a_dead = global.enemy_dead_2;
            enemy_a_spared = global.enemy_spared_2;
        }
        
        if (global.enemy_count >= 3)
        {
            enemy_b_dead = global.enemy_dead_3;
            enemy_b_spared = global.enemy_spared_3;
        }
    }
    else if (arg0 == 2)
    {
        global.enemy_sparing_2 = true;
        global.enemy_spared_2 = true;
        enemy_a_dead = global.enemy_dead;
        enemy_a_spared = global.enemy_spared;
        
        if (global.enemy_count >= 3)
        {
            enemy_b_dead = global.enemy_dead_3;
            enemy_b_spared = global.enemy_spared_3;
        }
    }
    else if (arg0 == 3)
    {
        global.enemy_sparing_3 = true;
        global.enemy_spared_3 = true;
        enemy_a_dead = global.enemy_dead;
        enemy_a_spared = global.enemy_spared;
        enemy_b_dead = global.enemy_dead_2;
        enemy_b_spared = global.enemy_spared_2;
    }
    
    if (global.enemy_count == 1)
    {
        with (obj_battle_generator)
            audio_extend = false;
        
        audio_stop_all();
        instance_create(0, 0, obj_dialogue_battle_win_enemy);
    }
    else if (global.enemy_count == 2 && (enemy_a_dead + enemy_a_spared) >= 1)
    {
        with (obj_battle_generator)
            audio_extend = false;
        
        audio_stop_all();
        instance_create(0, 0, obj_dialogue_battle_win_enemy);
    }
    else if (global.enemy_count == 3 && (enemy_a_dead + enemy_a_spared + enemy_b_dead + enemy_b_spared) >= 2)
    {
        with (obj_battle_generator)
            audio_extend = false;
        
        audio_stop_all();
        instance_create(0, 0, obj_dialogue_battle_win_enemy);
    }
    else
    {
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
