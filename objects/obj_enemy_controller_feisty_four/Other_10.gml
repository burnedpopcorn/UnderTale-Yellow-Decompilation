if (case_exec == "T0 Quote Ed")
{
    instance_create(20, 60, obj_quote_bubble_battle_reverse);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t0_ed);
}
else if (case_exec == "T1 Vanish Ed")
{
    vanish_type = "Ed";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T1 Appear Moray")
{
    instance_create(318, 224, obj_feisty_four_moray_intro);
}
else if (case_exec == "T1 BG Moray")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Moray Solo 1";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 1;
    audio_vol_ace = 0;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T1 Obj Moray")
{
    instance_create(318, 224, obj_feisty_four_moray_legs);
    current_hp_ed = global.current_hp_enemy;
    max_hp_ed = global.max_hp_enemy;
    last_hp_ed = global.last_hp_enemy;
    current_hp_ed_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_moray;
    global.max_hp_enemy = max_hp_moray;
    global.last_hp_enemy = last_hp_moray;
    global.current_hp_enemy_draw = current_hp_moray_draw;
    global.enemy_attack_stat = moray_attack_stat;
    global.enemy_defense_stat = moray_defense_stat;
    global.battle_enemy_name_1 = "moray";
}
else if (case_exec == "T1 Quote Moray")
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t1_moray);
}
else if (case_exec == "T2 Vanish Moray")
{
    vanish_type = "Moray";
    vanish_direction = 1;
    event_user(2);
}
else if (case_exec == "T2 Appear Ace")
{
    instance_create(318, 224, obj_feisty_four_ace_intro);
}
else if (case_exec == "T2 BG Ace")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ace Solo 1";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 0;
    audio_vol_ace = 1;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T2 Obj Ace")
{
    instance_create(318, 224, obj_feisty_four_ace_legs);
    current_hp_moray = global.current_hp_enemy;
    max_hp_moray = global.max_hp_enemy;
    last_hp_moray = global.last_hp_enemy;
    current_hp_moray_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_ace;
    global.max_hp_enemy = max_hp_ace;
    global.last_hp_enemy = last_hp_ace;
    global.current_hp_enemy_draw = current_hp_ace_draw;
    global.enemy_attack_stat = ace_attack_stat;
    global.enemy_defense_stat = ace_defense_stat;
    global.battle_enemy_name_1 = "ace";
}
else if (case_exec == "T2 Quote Ace")
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t2_ace);
}
else if (case_exec == "T3 Quote Mooch 1")
{
    instance_create(420, 74, obj_quote_bubble_battle_reverse);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t3_mooch_1);
}
else if (case_exec == "T3 Vanish Ace")
{
    vanish_type = "Ace";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T3 Appear Mooch")
{
    instance_create(318, 224, obj_feisty_four_mooch_intro);
}
else if (case_exec == "T3 BG Mooch")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Mooch Solo 1";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 0;
    audio_vol_ace = 0;
    audio_vol_mooch = 1;
    event_user(1);
}
else if (case_exec == "T3 Obj Mooch")
{
    instance_create(318, 224, obj_feisty_four_mooch_body_full);
    current_hp_ace = global.current_hp_enemy;
    max_hp_ace = global.max_hp_enemy;
    last_hp_ace = global.last_hp_enemy;
    current_hp_ace_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_mooch;
    global.max_hp_enemy = max_hp_mooch;
    global.last_hp_enemy = last_hp_mooch;
    global.current_hp_enemy_draw = current_hp_mooch_draw;
    global.enemy_attack_stat = mooch_attack_stat;
    global.enemy_defense_stat = mooch_defense_stat;
    global.battle_enemy_name_1 = "mooch";
}
else if (case_exec == "T3 Quote Mooch 2")
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t3_mooch_2);
}
else if (case_exec == "T4 Appear Ed")
{
    instance_create(438, 224, obj_feisty_four_ed_intro);
    audio_play_sound(snd_feisty_ed_entrance_mooch, 1, 0);
}
else if (case_exec == "T4 Vanish Mooch")
{
    vanish_type = "Mooch Smack";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T4 BG Ed")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ed Solo 1";
        event_user(2);
    }
    
    audio_vol_ed = 1;
    audio_vol_moray = 0;
    audio_vol_ace = 0;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T4 Obj Ed")
{
    instance_create(318, 224, obj_feisty_four_ed_legs);
    current_hp_mooch = global.current_hp_enemy;
    max_hp_mooch = global.max_hp_enemy;
    last_hp_mooch = global.last_hp_enemy;
    current_hp_mooch_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_ed;
    global.max_hp_enemy = max_hp_ed;
    global.last_hp_enemy = last_hp_ed;
    global.current_hp_enemy_draw = current_hp_ed_draw;
    global.enemy_attack_stat = ed_attack_stat;
    global.enemy_defense_stat = ed_defense_stat;
    global.battle_enemy_name_1 = "ed";
}
else if (case_exec == "T4 Quote Ed")
{
    instance_create(410, 64, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t4_ed);
}
else if (case_exec == "T5 Vanish Ed")
{
    vanish_type = "Ed";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T5 Appear Moray")
{
    instance_create(318, 224, obj_feisty_four_moray_intro);
}
else if (case_exec == "T5 BG Moray")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Moray Solo 2";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 1;
    audio_vol_ace = 0;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T5 Obj Moray")
{
    instance_create(318, 224, obj_feisty_four_moray_legs);
    current_hp_ed = global.current_hp_enemy;
    max_hp_ed = global.max_hp_enemy;
    last_hp_ed = global.last_hp_enemy;
    current_hp_ed_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_moray;
    global.max_hp_enemy = max_hp_moray;
    global.last_hp_enemy = last_hp_moray;
    global.current_hp_enemy_draw = current_hp_moray_draw;
    global.enemy_attack_stat = moray_attack_stat;
    global.enemy_defense_stat = moray_defense_stat;
    global.battle_enemy_name_1 = "moray";
}
else if (case_exec == "T5 Quote Moray")
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t5_moray);
}
else if (case_exec == "T6 Vanish Moray")
{
    vanish_type = "Moray";
    vanish_direction = 1;
    event_user(2);
}
else if (case_exec == "T6 Appear Ace")
{
    instance_create(318, 224, obj_feisty_four_ace_intro);
}
else if (case_exec == "T6 BG Ace")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ace Solo 2";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 0;
    audio_vol_ace = 1;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T6 Obj Ace")
{
    instance_create(318, 224, obj_feisty_four_ace_legs);
    current_hp_moray = global.current_hp_enemy;
    max_hp_moray = global.max_hp_enemy;
    last_hp_moray = global.last_hp_enemy;
    current_hp_moray_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_ace;
    global.max_hp_enemy = max_hp_ace;
    global.last_hp_enemy = last_hp_ace;
    global.current_hp_enemy_draw = current_hp_ace_draw;
    global.enemy_attack_stat = ace_attack_stat;
    global.enemy_defense_stat = ace_defense_stat;
    global.battle_enemy_name_1 = "ace";
}
else if (case_exec == "T6 Quote Ace")
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t6_ace);
}
else if (case_exec == "T7 Quote Mooch")
{
    instance_create(420, 74, obj_quote_bubble_battle_reverse);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t7_mooch);
}
else if (case_exec == "T7 Vanish Ace")
{
    vanish_type = "Ace";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T7 Appear Mooch")
{
    instance_create(318, 224, obj_feisty_four_mooch_intro);
}
else if (case_exec == "T7 BG Mooch")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Mooch Solo 2";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 0;
    audio_vol_ace = 0;
    audio_vol_mooch = 1;
    event_user(1);
}
else if (case_exec == "T7 Obj Mooch")
{
    instance_create(318, 224, obj_feisty_four_mooch_body_full);
    current_hp_ace = global.current_hp_enemy;
    max_hp_ace = global.max_hp_enemy;
    last_hp_ace = global.last_hp_enemy;
    current_hp_ace_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_mooch;
    global.max_hp_enemy = max_hp_mooch;
    global.last_hp_enemy = last_hp_mooch;
    global.current_hp_enemy_draw = current_hp_mooch_draw;
    global.enemy_attack_stat = mooch_attack_stat;
    global.enemy_defense_stat = mooch_defense_stat;
    global.battle_enemy_name_1 = "mooch";
}
else if (case_exec == "T8 Vanish Mooch")
{
    vanish_type = "Mooch";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T8 Appear Ed")
{
    instance_create(420, 224, obj_feisty_four_ed_intro);
    audio_play_sound(snd_feisty_ed_entrance, 1, 0);
}
else if (case_exec == "T8 BG Ed")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ed Moray Duo Ed";
        event_user(2);
    }
    
    audio_vol_ed = 1;
    audio_vol_ace = 0;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T8 Obj Ed")
{
    instance_create(420, 224, obj_feisty_four_ed_legs);
    global.current_hp_enemy_2 = current_hp_ed;
    global.max_hp_enemy_2 = max_hp_ed;
    global.last_hp_enemy_2 = last_hp_ed;
    global.current_hp_enemy_draw_2 = current_hp_ed_draw;
    global.enemy_attack_stat_2 = ed_attack_stat;
    global.enemy_defense_stat_2 = ed_defense_stat;
    global.battle_enemy_name_2 = "ed";
    global.enemy_count = 2;
    global.enemy_target_x = 216;
    global.enemy_target_y = 144;
    global.enemy_target_x_2 = 420;
    global.enemy_target_y_2 = 144;
    script_execute(scr_determine_attacking_damage_stat_critical);
}
else if (case_exec == "T8 Quote Ed")
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t8_ed);
}
else if (case_exec == "T8 Appear Moray")
{
    instance_create(216, 224, obj_feisty_four_moray_intro);
}
else if (case_exec == "T8 BG Moray")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ed Moray Duo Moray";
        event_user(2);
    }
    
    audio_vol_moray = 1;
    audio_vol_ace = 0;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T8 Obj Moray")
{
    instance_create(216, 224, obj_feisty_four_moray_legs);
    current_hp_mooch = global.current_hp_enemy;
    max_hp_mooch = global.max_hp_enemy;
    last_hp_mooch = global.last_hp_enemy;
    current_hp_mooch_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_moray;
    global.max_hp_enemy = max_hp_moray;
    global.last_hp_enemy = last_hp_moray;
    global.current_hp_enemy_draw = current_hp_moray_draw;
    global.enemy_attack_stat = moray_attack_stat;
    global.enemy_defense_stat = moray_defense_stat;
    global.battle_enemy_name_1 = "moray";
    
    with (obj_heart_battle_fighting_parent)
        event_user(0);
}
else if (case_exec == "T8 Quote Moray")
{
    instance_create(0, 74, obj_quote_bubble_battle_yellow_2_reverse);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t8_moray);
}
else if (case_exec == "T9 Vanish Moray")
{
    vanish_type = "Moray";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T9 Vanish Ed")
{
    vanish_type = "Ed";
    vanish_direction = 1;
    event_user(2);
}
else if (case_exec == "T9 Appear Ace")
{
    instance_create(216, 224, obj_feisty_four_ace_intro);
}
else if (case_exec == "T9 BG Ace")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ace Mooch Duo Ace";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 0;
    audio_vol_ace = 1;
    event_user(1);
}
else if (case_exec == "T9 Obj Ace")
{
    instance_create(216, 224, obj_feisty_four_ace_legs);
    current_hp_moray = global.current_hp_enemy;
    max_hp_moray = global.max_hp_enemy;
    last_hp_moray = global.last_hp_enemy;
    current_hp_moray_draw = global.current_hp_enemy;
    global.current_hp_enemy = current_hp_ace;
    global.max_hp_enemy = max_hp_ace;
    global.last_hp_enemy = last_hp_ace;
    global.current_hp_enemy_draw = current_hp_ace_draw;
    global.enemy_attack_stat = ace_attack_stat;
    global.enemy_defense_stat = ace_defense_stat;
    global.battle_enemy_name_1 = "ace";
}
else if (case_exec == "T9 Quote Ace")
{
    instance_create(266, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t9_ace);
}
else if (case_exec == "T9 Quote Mooch 1")
{
    instance_create(420, 74, obj_quote_bubble_battle_reverse);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t9_mooch_1);
}
else if (case_exec == "T9 Appear Mooch")
{
    instance_create(420, 224, obj_feisty_four_mooch_intro);
}
else if (case_exec == "T9 BG Mooch")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ace Mooch Duo Mooch";
        event_user(2);
    }
    
    audio_vol_ed = 0;
    audio_vol_moray = 0;
    audio_vol_mooch = 1;
    event_user(1);
}
else if (case_exec == "T9 Obj Mooch")
{
    instance_create(420, 224, obj_feisty_four_mooch_body_full);
    current_hp_ed = global.current_hp_enemy_2;
    max_hp_ed = global.max_hp_enemy_2;
    last_hp_ed = global.last_hp_enemy_2;
    current_hp_ed_draw = global.current_hp_enemy_2;
    global.current_hp_enemy_2 = current_hp_mooch;
    global.max_hp_enemy_2 = max_hp_mooch;
    global.last_hp_enemy_2 = last_hp_mooch;
    global.current_hp_enemy_draw_2 = current_hp_mooch_draw;
    global.enemy_attack_stat_2 = mooch_attack_stat;
    global.enemy_defense_stat_2 = mooch_defense_stat;
    global.battle_enemy_name_2 = "mooch";
    
    with (obj_heart_battle_fighting_parent)
        event_user(0);
}
else if (case_exec == "T9 Quote Mooch 2")
{
    instance_create(100, 74, obj_quote_bubble_battle_reverse);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t9_mooch_2);
}
else if (case_exec == "T10 Vanish Ace")
{
    vanish_type = "Ace";
    vanish_direction = -1;
    event_user(2);
}
else if (case_exec == "T10 Vanish Mooch")
{
    vanish_type = "Mooch";
    vanish_direction = 1;
    event_user(2);
}
else if (case_exec == "T10 Appear Ed")
{
    instance_create(318, 224, obj_feisty_four_ed_intro);
    audio_play_sound(snd_feisty_ed_entrance, 1, 0);
}
else if (case_exec == "T10 BG Ed")
{
    with (obj_background_feisty_four_yellow)
    {
        spin_type = "Ed Solo 2";
        event_user(2);
    }
    
    audio_vol_ed = 1;
    audio_vol_moray = 0;
    audio_vol_ace = 0;
    audio_vol_mooch = 0;
    event_user(1);
}
else if (case_exec == "T10 Obj Ed")
{
    instance_create(318, 224, obj_feisty_four_ed_legs);
    current_hp_ace = global.current_hp_enemy;
    max_hp_ace = global.max_hp_enemy;
    last_hp_ace = global.last_hp_enemy;
    current_hp_ace_draw = global.current_hp_enemy;
    current_hp_mooch = global.current_hp_enemy_2;
    max_hp_mooch = global.max_hp_enemy_2;
    last_hp_mooch = global.last_hp_enemy_2;
    current_hp_mooch_draw = global.current_hp_enemy_2;
    global.current_hp_enemy = current_hp_ed;
    global.max_hp_enemy = max_hp_ed;
    global.last_hp_enemy = last_hp_ed;
    global.current_hp_enemy_draw = current_hp_ed_draw;
    global.enemy_attack_stat = ed_attack_stat;
    global.enemy_defense_stat = ed_defense_stat;
    global.battle_enemy_name_1 = "ed";
    global.enemy_count = 1;
}
else if (case_exec == "T10 Quote Ed")
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create_depth(0, 0, -1000, obj_quote_battle_feisty_four_t10_ed_1);
}
