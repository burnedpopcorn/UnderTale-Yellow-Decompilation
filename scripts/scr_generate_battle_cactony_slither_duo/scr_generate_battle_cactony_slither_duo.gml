function scr_generate_battle_cactony_slither_duo()
{
    global.battle_enemy_name_1 = "cactony a";
    global.battle_enemy_name_2 = "slither b";
    global.battle_menu_number = 1;
    global.speed_self = 4;
    global.invulnerability_self = global.player_invulnerability;
    global.attacking_damage_cap = -1;
    global.attacking_damage_cap_2 = -1;
    global.hit_self = false;
    global.hurt_self = false;
    global.current_hp_enemy = 87;
    global.current_hp_enemy_2 = 70;
    global.max_hp_enemy = 87;
    global.max_hp_enemy_2 = 70;
    global.last_hp_enemy = global.current_hp_enemy;
    global.last_hp_enemy_2 = global.current_hp_enemy_2;
    global.current_hp_enemy_draw = global.current_hp_enemy;
    global.current_hp_enemy_draw_2 = global.current_hp_enemy_2;
    global.enemy_low_hp = false;
    global.enemy_low_hp_2 = false;
    global.enemy_hit = false;
    global.enemy_hit_2 = false;
    global.enemy_hurt = false;
    global.enemy_hurt_2 = false;
    global.enemy_attack_stat = 8;
    global.enemy_attack_stat_2 = 8;
    global.enemy_defense_stat = 8;
    global.enemy_defense_stat_2 = 7;
    global.enemy_vulnerable = true;
    global.enemy_vulnerable_2 = true;
    global.enemy_attacking = false;
    global.enemy_sparing = false;
    global.enemy_sparing_2 = false;
    global.enemy_dead = false;
    global.enemy_dead_2 = false;
    global.enemy_spared = false;
    global.enemy_spared_2 = false;
    global.enemy_betrayed = false;
    global.enemy_betrayed_2 = false;
    global.enemy_fleeable = true;
    global.enemy_special_text = 0;
    global.enemy_special_text_2 = 0;
    global.enemy_exp = 46;
    global.enemy_exp_2 = 46;
    global.enemy_gold = 10;
    global.enemy_gold_2 = 10;
    global.enemy_count = 2;
    global.turns_passed = 0;
    global.last_action_selected = "Nothing";
    global.last_action_selected_2 = "Nothing";
    global.action_1_important = false;
    global.action_1_important_2 = false;
    global.action_2_important = false;
    global.action_2_important_2 = false;
    global.action_3_important = false;
    global.action_3_important_2 = false;
    global.action_1_color = c_white;
    global.action_1_color_2 = c_white;
    global.action_2_color = c_white;
    global.action_2_color_2 = c_white;
    global.action_3_color = c_white;
    global.action_3_color_2 = c_white;
    global.action_amount = 2;
    global.action_amount_2 = 3;
    global.item_use = "Nothing";
    global.item_used = "Nothing";
    global.item_gift = "Nothing";
    global.item_gifted = "Nothing";
    global.image_alpha_enemy_attacking = 1;
    global.important_cutscene = false;
    global.can_attack = true;
    global.action_1_selected_count = 0;
    global.action_1_selected_count_2 = 0;
    global.action_2_selected_count = 0;
    global.action_2_selected_count_2 = 0;
    global.action_3_selected_count = 0;
    global.action_3_selected_count_2 = 0;
    global.spare_selected_count = 0;
    global.hit_count = 0;
    global.hit_count_2 = 0;
    global.miss_count = 0;
    global.miss_count_2 = 0;
    global.no_hit_count = 0;
    global.no_hit_count_2 = 0;
    global.hurt_self_count = 0;
    global.hurt_self_turn_count = 0;
    global.item_use_count = 0;
    global.item_gift_count = 0;
    global.item_gift_count_2 = 0;
    global.enemy_mode = 0;
    global.enemy_mode_previous = 0;
    global.enemy_mode_2 = 0;
    global.enemy_mode_2_previous = 0;
    global.enemy_mode_gen = 0;
    global.enemy_mode_gen_previous = 0;
    global.enemy_mode_gen_2 = 0;
    global.enemy_mode_gen_2_previous = 0;
    scr_audio_stop_sound(0);
    script_execute(scr_determine_enemy_music_yellow);
    audio_extend = false;
    global.sound_carry_battle = false;
    global.mettaton_voice_count = 1;
    instance_create(179, 223, obj_cactony_body_a);
    instance_create(obj_cactony_body_a.x - 28, obj_cactony_body_a.y - 52, obj_cactony_arm_left_a);
    instance_create(obj_cactony_body_a.x + 18, obj_cactony_body_a.y - 42, obj_cactony_arm_right_a);
    global.enemy_damage_x = obj_cactony_body_a.x - 12;
    global.enemy_damage_y = obj_cactony_body_a.y - 42;
    global.enemy_target_x = obj_cactony_body_a.x - 12;
    global.enemy_target_y = obj_cactony_body_a.y - 42;
    instance_create(470, 203, obj_slither_body_b);
    global.enemy_damage_x_2 = obj_slither_body_b.x - 12;
    global.enemy_damage_y_2 = obj_slither_body_b.y - 42;
    global.enemy_target_x_2 = obj_slither_body_b.x - 12;
    global.enemy_target_y_2 = obj_slither_body_b.y - 42;
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
    instance_create_depth(0, 0, -500, obj_battle_enemy_effect_slither_fog);
    global.enemy_attack = "Test";
}