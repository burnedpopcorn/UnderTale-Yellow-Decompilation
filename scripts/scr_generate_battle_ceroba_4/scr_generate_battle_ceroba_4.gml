function scr_generate_battle_ceroba_4()
{
    var battle_bg;
    
    if (live_call())
        return global.live_result;
    
    global.current_hp_self = global.max_hp_self;
    global.battle_enemy_name_1 = "ceroba";
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
    global.enemy_attack_stat = 14;
    global.enemy_defense_stat = 15;
    global.enemy_vulnerable = true;
    global.enemy_attacking = false;
    global.enemy_sparing = false;
    global.enemy_dead = false;
    global.enemy_spared = false;
    global.enemy_betrayed = false;
    global.enemy_fleeable = false;
    global.enemy_special_text = 0;
    global.enemy_exp = 1500;
    global.enemy_gold = 30;
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
    global.image_alpha_enemy_attacking = 1;
    global.important_cutscene = false;
    global.can_attack = true;
    global.battle_phase = 1;
    global.action_1_selected_count = 0;
    global.action_2_selected_count = 0;
    global.action_3_selected_count = 0;
    global.spare_selected_count = 0;
    global.hit_count = 0;
    global.miss_count = 0;
    global.no_hit_count = 0;
    global.hurt_self_count = 0;
    global.hurt_self_turn_count = 0;
    global.item_use_count = 0;
    global.item_gift_count = 0;
    global.attack_cycle = 19;
    global.attack_cycle_max = 19;
    global.enemy_mode = 0;
    global.enemy_mode_previous = 0;
    
    if (global.sound_carry_overworld == false)
        scr_audio_stop_sound(0);
    
    audio_extend = false;
    global.sound_carry_battle = false;
    global.mettaton_voice_count = 1;
    
    if (!instance_exists(obj_ceroba_body_pacifist_phase_2))
    {
        instance_create_depth(318, 96, -1000, obj_ceroba_transformation_mask);
        battle_bg = instance_create_depth(0, 0, 0, obj_petal_generator_phase_2);
        
        with (battle_bg)
        {
            petals_enabled = false;
            fade_out = true;
            image_alpha = 0;
        }
        
        instance_create_depth(318, 250, 100, obj_ceroba_body_pacifist_phase_2);
        
        with (obj_ceroba_body_pacifist_phase_2)
        {
            sprite_index = spr_ceroba_p2_get_up_2;
            image_index = 0;
            image_speed = 0;
            y = obj_ceroba_transformation_mask.y + 174;
        }
        
        instance_create_depth(322, 230, 150, obj_ceroba_defeated_hair);
        instance_create(0, 0, obj_ceroba_quote_controller_flashback_02);
        instance_create_depth(obj_ceroba_body_pacifist_phase_2.x, 110, obj_ceroba_transformation_mask.depth - 1, obj_ceroba_phase_2_shield);
    }
    
    global.enemy_target_x = obj_ceroba_body_pacifist_phase_2.x;
    global.enemy_target_y = obj_ceroba_body_pacifist_phase_2.y - 100;
    global.last_text_move_select = -1;
    instance_create(0, 0, obj_battle_fade_in_screen_white);
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
    
    if (global.option_autoshoot)
        instance_create_depth(536, 399, 5, obj_autofire_toggle);
    
    instance_create_depth(0, 0, -1, obj_ceroba_phase_2_red_shader);
    global.soul_mode = "Red";
    instance_create(obj_fight.x + 17, obj_fight.y + 23, obj_heart_battle_menu);
    obj_heart_battle_menu.image_alpha = 0;
    global.boss_mini = false;
}
