function scr_generate_battle_goosic_solo()
{
    global.battle_enemy_name_1 = "goosic a";
    global.battle_menu_number = 1;
    global.speed_self = 4;
    global.invulnerability_self = global.player_invulnerability;
    global.attacking_damage_cap = -1;
    global.hit_self = false;
    global.hurt_self = false;
    global.current_hp_enemy = 160;
    global.max_hp_enemy = 160;
    global.last_hp_enemy = global.current_hp_enemy;
    global.current_hp_enemy_draw = global.current_hp_enemy;
    global.enemy_low_hp = false;
    global.enemy_hit = false;
    global.enemy_hurt = false;
    global.enemy_attack_stat = 12;
    global.enemy_defense_stat = 8;
    global.enemy_vulnerable = true;
    global.enemy_attacking = false;
    global.enemy_sparing = false;
    global.enemy_dead = false;
    global.enemy_spared = false;
    global.enemy_betrayed = false;
    global.enemy_fleeable = true;
    global.enemy_special_text = 0;
    global.enemy_exp = 0;
    global.enemy_gold = 18;
    global.enemy_count = 1;
    global.turns_passed = 0;
    global.last_action_selected = "Nothing";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
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
    global.enemy_mode = 0;
    global.enemy_mode_previous = 0;
    global.enemy_mode_gen = 0;
    global.enemy_mode_gen_previous = 0;
    scr_audio_stop_sound(0);
    audio_listener_position(0, 0, 0);
    audio_falloff_set_model(audio_falloff_none);
    audio_listener_orientation(0, 0, 1, 0, 1, 0);
    
    if (global.kill_number[4] <= 7)
    {
        if (global.kill_number[4] > 0)
        {
            audio_play_sound_at(mus_genobattle_yellow, 0, 0, 0, 100, 300, 1, 1, 1);
            audio_sound_gain(mus_genobattle_yellow, 1, 0);
            var mus_pitch = (global.kill_number[4] / 7) * 10 * 0.1;
            audio_sound_pitch(mus_genobattle_yellow, mus_pitch);
        }
        else
        {
            audio_sound_gain(mus_nobodycame_yellow, 1, 0);
            audio_play_sound(mus_nobodycame_yellow, 20, true);
        }
    }
    else
    {
        audio_play_sound_at(mus_heatwave_approaching, 0, 0, 0, 100, 300, 1, 1, 1);
        audio_sound_gain(mus_heatwave_approaching, 1, 0);
        audio_sound_pitch(mus_heatwave_approaching, 1);
    }
    
    audio_extend = false;
    global.sound_carry_battle = false;
    global.mettaton_voice_count = 1;
    instance_create_depth(316, 140, 49, obj_goosic_body_a);
    global.enemy_damage_x = obj_goosic_body_a.x - 12;
    global.enemy_damage_y = obj_goosic_body_a.y - 42;
    global.enemy_target_x = obj_goosic_body_a.x - 12;
    global.enemy_target_y = obj_goosic_body_a.y - 42;
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
