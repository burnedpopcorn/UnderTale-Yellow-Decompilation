function scr_generate_battle_trihecta_separated()
{
    var battle_phase_step, new_current_hp;
    
    battle_phase_step = global.battle_phase_step;
    global.battle_enemy_name_1 = "tri";
    global.battle_enemy_name_2 = "hec";
    global.battle_enemy_name_3 = "ta";
    
    if (battle_phase_step == 0)
    {
        global.battle_menu_number = 1;
        global.speed_self = 4;
        global.invulnerability_self = global.player_invulnerability;
    }
    
    global.attacking_damage_cap = -1;
    global.attacking_damage_cap_2 = -1;
    global.attacking_damage_cap_3 = -1;
    
    if (battle_phase_step == 0)
    {
        global.hit_self = false;
        global.hurt_self = false;
    }
    
    new_current_hp = max(1, floor(global.current_hp_enemy / 3));
    global.current_hp_enemy = 60;
    global.current_hp_enemy_2 = 60;
    global.current_hp_enemy_3 = 60;
    global.max_hp_enemy = 60;
    global.max_hp_enemy_2 = 60;
    global.max_hp_enemy_3 = 60;
    global.last_hp_enemy = global.current_hp_enemy;
    global.last_hp_enemy_2 = global.current_hp_enemy_2;
    global.last_hp_enemy_3 = global.current_hp_enemy_3;
    global.current_hp_enemy_draw = global.current_hp_enemy;
    global.current_hp_enemy_draw_2 = global.current_hp_enemy_2;
    global.current_hp_enemy_draw_3 = global.current_hp_enemy_3;
    global.enemy_low_hp = false;
    global.enemy_low_hp_2 = false;
    global.enemy_low_hp_3 = false;
    global.enemy_hit = false;
    global.enemy_hit_2 = false;
    global.enemy_hit_3 = false;
    global.enemy_hurt = false;
    global.enemy_hurt_2 = false;
    global.enemy_hurt_3 = false;
    global.enemy_attack_stat = 7;
    global.enemy_attack_stat_2 = 7;
    global.enemy_attack_stat_3 = 7;
    global.enemy_defense_stat = 8;
    global.enemy_defense_stat_2 = 8;
    global.enemy_defense_stat_3 = 8;
    global.enemy_vulnerable = true;
    global.enemy_vulnerable_2 = true;
    global.enemy_vulnerable_3 = true;
    
    if (battle_phase_step == 0)
        global.enemy_attacking = false;
    
    global.enemy_sparing = true;
    global.enemy_sparing_2 = true;
    global.enemy_sparing_3 = true;
    global.enemy_dead = false;
    global.enemy_dead_2 = false;
    global.enemy_dead_3 = false;
    global.enemy_spared = false;
    global.enemy_spared_2 = false;
    global.enemy_spared_3 = false;
    global.enemy_betrayed = false;
    global.enemy_betrayed_2 = false;
    global.enemy_betrayed_3 = false;
    global.enemy_fleeable = true;
    global.enemy_special_text = 0;
    global.enemy_special_text_2 = 0;
    global.enemy_special_text_3 = 0;
    global.enemy_exp = 9;
    global.enemy_exp_2 = 9;
    global.enemy_exp_3 = 9;
    global.enemy_gold = 4;
    global.enemy_gold_2 = 4;
    global.enemy_gold_3 = 4;
    global.enemy_count = 3;
    global.turns_passed = 0;
    
    if (battle_phase_step == 0)
    {
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    
    global.action_1_important = false;
    global.action_1_important_2 = false;
    global.action_1_important_3 = false;
    global.action_2_important = false;
    global.action_2_important_2 = false;
    global.action_2_important_3 = false;
    global.action_3_important = false;
    global.action_3_important_2 = false;
    global.action_3_important_3 = false;
    global.action_1_color = c_white;
    global.action_1_color_2 = c_white;
    global.action_1_color_3 = c_white;
    global.action_2_color = c_white;
    global.action_2_color_2 = c_white;
    global.action_2_color_3 = c_white;
    global.action_3_color = c_white;
    global.action_3_color_2 = c_white;
    global.action_3_color_3 = c_white;
    global.action_amount = 1;
    global.action_amount_2 = 1;
    global.action_amount_3 = 1;
    
    if (battle_phase_step == 0)
    {
        global.item_use = "Nothing";
        global.item_used = "Nothing";
        global.item_gift = "Nothing";
        global.item_gifted = "Nothing";
        global.image_alpha_enemy_attacking = 1;
        global.important_cutscene = false;
        global.can_attack = true;
    }
    
    global.action_1_selected_count = 0;
    global.action_1_selected_count_2 = 0;
    global.action_1_selected_count_3 = 0;
    global.action_2_selected_count = 0;
    global.action_2_selected_count_2 = 0;
    global.action_2_selected_count_3 = 0;
    global.action_3_selected_count = 0;
    global.action_3_selected_count_2 = 0;
    global.action_3_selected_count_3 = 0;
    global.spare_selected_count = 0;
    global.hit_count = 0;
    global.hit_count_2 = 0;
    global.hit_count_3 = 0;
    global.miss_count = 0;
    global.miss_count_2 = 0;
    global.miss_count_3 = 0;
    global.no_hit_count = 0;
    global.no_hit_count_2 = 0;
    global.no_hit_count_3 = 0;
    
    if (battle_phase_step == 0)
    {
        global.hurt_self_count = 0;
        global.hurt_self_turn_count = 0;
    }
    
    global.item_use_count = 0;
    global.item_gift_count = 0;
    global.item_gift_count_2 = 0;
    global.item_gift_count_3 = 0;
    global.enemy_mode = 0;
    global.enemy_mode_previous = 0;
    global.enemy_mode_2 = 0;
    global.enemy_mode_2_previous = 0;
    global.enemy_mode_3 = 0;
    global.enemy_mode_3_previous = 0;
    global.enemy_mode_gen = 0;
    global.enemy_mode_gen_previous = 0;
    global.enemy_mode_gen_2 = 0;
    global.enemy_mode_gen_2_previous = 0;
    global.enemy_mode_gen_3 = 0;
    global.enemy_mode_gen_3_previous = 0;
    
    if (battle_phase_step == 0)
    {
        scr_audio_stop_sound(0);
        script_execute(scr_determine_enemy_music_yellow);
        audio_extend = false;
        global.sound_carry_battle = false;
        global.mettaton_voice_count = 1;
    }
    
    instance_create(318, 196, obj_tri_separated);
    global.enemy_damage_x = obj_tri_separated.x;
    global.enemy_damage_y = obj_tri_separated.y;
    global.enemy_target_x = obj_tri_separated.x;
    global.enemy_target_y = obj_tri_separated.y;
    instance_create(208, 196, obj_hec_separated);
    global.enemy_damage_x_2 = obj_hec_separated.x;
    global.enemy_damage_y_2 = obj_hec_separated.y;
    global.enemy_target_x_2 = obj_hec_separated.x;
    global.enemy_target_y_2 = obj_hec_separated.y;
    instance_create(432, 196, obj_ta_separated);
    global.enemy_damage_x_3 = obj_ta_separated.x;
    global.enemy_damage_y_3 = obj_ta_separated.y;
    global.enemy_target_x_3 = obj_ta_separated.x;
    global.enemy_target_y_3 = obj_ta_separated.y;
    
    if (battle_phase_step == 0)
    {
        script_execute(scr_create_background_battle_yellow);
        instance_create(0, 0, obj_battle_fade_in_screen);
        instance_create(275, 400, obj_battle_hp_current_self);
        instance_create(275, 400, obj_battle_hp_max_self);
        instance_create(275, 400, obj_battle_hp_cover_self);
        instance_create(0, 0, obj_text_battle_stat_name);
        instance_create(0, 0, obj_text_battle_stat_lv);
        instance_create(244, 405, obj_text_hp);
        instance_create(0, 0, obj_text_hp_stat);
        instance_create(32, 250, obj_dialogue_box_battle);
        instance_create(31, 431, obj_fight);
        instance_create(184, 431, obj_act);
        instance_create(344, 431, obj_item);
        instance_create(499, 431, obj_mercy);
        global.last_text_move_select = 0;
        global.soul_mode = "Red";
        instance_create(obj_fight.x + 17, obj_fight.y + 23, obj_heart_battle_menu);
        instance_create(0, 0, obj_dialogue_battle_move_select_intro);
    }
    else if (battle_phase_step == 1)
    {
        global.last_text_move_select = -1;
    }
    
    script_execute(scr_determine_attacking_damage_stat_critical);
}
