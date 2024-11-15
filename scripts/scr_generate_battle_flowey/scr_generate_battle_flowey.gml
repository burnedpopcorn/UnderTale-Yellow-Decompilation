function scr_generate_battle_flowey()
{
    if (live_call())
        return global.live_result;
    
    global.battle_enemy_name_1 = "flowey";
    global.battle_menu_number = 1;
    global.speed_self = 4;
    global.invulnerability_self = global.player_invulnerability;
    global.attacking_damage_cap = -1;
    global.hit_self = false;
    global.hurt_self = false;
    global.current_hp_enemy = 1000;
    global.max_hp_enemy = 1000;
    global.last_hp_enemy = global.current_hp_enemy;
    global.current_hp_enemy_draw = global.current_hp_enemy;
    global.enemy_low_hp = false;
    global.enemy_hit = false;
    global.enemy_hurt = false;
    global.enemy_attack_stat = 2;
    global.enemy_defense_stat = 15;
    global.enemy_vulnerable = true;
    global.enemy_attacking = true;
    global.enemy_sparing = false;
    global.enemy_dead = false;
    global.enemy_spared = false;
    global.enemy_betrayed = false;
    global.enemy_fleeable = false;
    global.enemy_special_text = 0;
    global.enemy_exp = 1500;
    global.enemy_gold = 20;
    global.enemy_count = 1;
    global.turns_passed = 0;
    global.last_action_selected = "Nothing";
    global.action_1_important = false;
    global.action_2_important = false;
    global.action_3_important = false;
    global.action_1_color = c_white;
    global.action_2_color = c_white;
    global.action_3_color = c_white;
    global.action_amount = 3;
    global.item_use = "Nothing";
    global.item_used = "Nothing";
    global.item_gift = "Nothing";
    global.item_gifted = "Nothing";
    global.image_alpha_enemy_attacking = 0;
    global.important_cutscene = false;
    global.can_attack = true;
    global.action_1_selected_count = 0;
    global.action_2_selected_count = 0;
    global.spare_selected_count = 0;
    global.hit_count = 0;
    global.miss_count = 0;
    global.no_hit_count = 0;
    global.hurt_self_count = 0;
    global.hurt_self_turn_count = 0;
    global.item_use_count = 0;
    global.item_gift_count = 0;
    global.attack_cycle = 0;
    global.attack_cycle_max = 7;
    global.enemy_mode = 0;
    global.enemy_mode_previous = 0;
    global.current_hp_self = 100;
    global.max_hp_self = 100;
    global.player_armor_modifier_defense = 0;
    global.player_defense = 0;
    
    if (global.sound_carry_overworld == false)
        scr_audio_stop_sound(0);
    
    audio_extend = false;
    global.sound_carry_battle = false;
    global.mettaton_voice_count = 1;
    global.enemy_target_x = 320;
    global.enemy_target_y = 60;
    global.last_text_move_select = -1;
    instance_create(0, 0, obj_battle_fade_in_screen);
    instance_create(275, 400, obj_battle_hp_current_self);
    instance_create(275, 400, obj_battle_hp_max_self);
    instance_create(275, 400, obj_battle_hp_cover_self);
    instance_create(0, 0, obj_text_battle_stat_name);
    instance_create(0, 0, obj_text_battle_stat_lv);
    instance_create(244, 405, obj_text_hp);
    instance_create(0, 0, obj_text_hp_stat);
    instance_create(319, 320, obj_dialogue_box_battle);
    instance_create(31, 431, obj_fight);
    instance_create(184, 431, obj_act);
    instance_create(344, 431, obj_item);
    instance_create(499, 431, obj_mercy);
    global.soul_mode = "Red";
    instance_create(obj_fight.x + 17, obj_fight.y + 23, obj_heart_battle_menu);
    
    with (obj_heart_battle_menu)
        image_alpha = 0;
    
    global.boss_mini = false;
    global.enemy_attack = "Flowey Opener";
    global.image_alpha_enemy_attacking_immunity = true;
    global.battle_phase = 1;
    
    if (!instance_exists(obj_flowey_1_controller_base))
        instance_create_depth(0, 0, 0, obj_flowey_1_controller_base);
    
    if (global.flowey_battle_1_phase > 1 || global.death_count[7] > 0)
    {
        obj_dialogue_box_battle.x = 32;
        obj_dialogue_box_battle.y = 250;
        global.enemy_attacking = false;
        
        with (obj_heart_battle_menu)
            image_alpha = 1;
        
        instance_create_depth(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, -642, obj_dialogue_battle_move_select_flowey);
        instance_create(0, 0, obj_attack_cycler_flowey);
        instance_destroy(obj_attack_cycler_flowey);
        global.turns_passed = 1;
        instance_create_depth(0, 0, 0, obj_battle_flowey_background_ui);
        instance_create_depth(320, 140, 0, obj_battle_flowey_body_1);
        obj_battle_flowey_body_1.can_draw_ghost = true;
        
        if (!audio_is_playing(mus_flowey_final_boss_1_main))
            global.battle_music = audio_play_sound(mus_flowey_final_boss_1_main, 1, 1);
    }
}
