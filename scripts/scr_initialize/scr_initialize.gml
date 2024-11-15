function scr_initialize()
{
    var i;
    
    randomize();
    global.player_level = 1;
    global.current_hp_self = 20;
    global.max_hp_self = 20;
    global.max_hp_boosted = 20;
    global.player_x = 150;
    global.player_y = 140;
    global.player_direction = "down";
    global.player_area = "";
    global.player_area_value = 0;
    global.player_can_run = true;
    global.current_pp_self = 0;
    global.max_pp_self = 99;
    global.current_sp_self = 0;
    global.max_sp_self = 99;
    global.current_rp_self = 0;
    global.max_rp_self = 99;
    global.player_gold = 0;
    global.player_sprites = "normal";
    global.player_name = "Clover";
    global.party_member = -4;
    global.player_attack = 10;
    global.player_defense = 10;
    global.player_speed = 3;
    global.player_invulnerability = 30;
    global.player_exp = 0;
    global.player_weapon = "Toy Gun";
    global.player_armor = "Worn Hat";
    global.player_weapon_modifier = "Rubber Ammo";
    global.player_armor_modifier = "Patch";
    global.player_weapon_attack = script_execute(scr_determine_weapon_attack);
    global.player_armor_defense = script_execute(scr_determine_armor_defense);
    global.player_weapon_modifier_attack = script_execute(scr_determine_weapon_modifier_attack);
    global.player_armor_modifier_defense = script_execute(scr_determine_armor_modifier_defense);
    global.player_has_satchel = false;
    global.player_can_travel = false;
    global.saved_datetime = date_current_datetime();
    global.elapsed_seconds = 0;
    global.last_room_overworld = "rm_ruins_01";
    global.story = 0;
    global.lastroom = 7;
    scr_init_flags_ruins();
    scr_init_flags_snowdin();
    scr_init_flags_dunes();
    scr_init_flags_steamworks();
    scr_init_flags_hotland();
    scr_init_flags_flowey();
    global.flowey_death_pop = 0;
    global.flowey_save_number = 1;
    global.fighting_flowey = 0;
    global.flowey_battle_1_phase = 0;
    global.save_count = 0;
    global.extra_flag[1] = false;
    global.extra_flag[2] = false;
    global.extra_flag[3] = false;
    global.extra_flag[4] = false;
    global.extra_flag[5] = false;
    global.extra_flag[6] = false;
    global.extra_flag[7] = false;
    global.extra_flag[8] = false;
    global.extra_flag[9] = false;
    global.encounter_flag[0] = 0;
    global.route = 2;
    global.kill_number[0] = 9999;
    global.kill_area[0][0] = 9999;
    global.kill_number[1] = 20;
    
    for (i = 0; i <= 6; i++)
        global.kill_area[1][i] = 5;
    
    global.kill_number[2] = 20;
    
    for (i = 0; i <= 7; i++)
        global.kill_area[2][i] = 5;
    
    global.kill_number[3] = 20;
    
    for (i = 0; i <= 8; i++)
        global.kill_area[3][i] = 3;
    
    global.kill_number[4] = 20;
    
    for (i = 0; i <= 12; i++)
        global.kill_area[4][i] = 3;
    
    global.kill_area_current = 0;
    global.flGenoCutscene = 0;
    global.geno_complete[1] = false;
    global.geno_complete[2] = false;
    global.geno_complete[3] = false;
    global.geno_complete[4] = false;
    global.geno_complete[5] = false;
    global.item_stock[0] = 1;
    global.item_stock[1] = 1;
    global.item_stock[2] = 1;
    global.item_stock[3] = 1;
    global.item_stock[4] = 1;
    global.item_stock[5] = 1;
    global.item_stock[6] = 1;
    global.item_stock[7] = 1;
    global.item_stock[8] = 3;
    global.item_stock[9] = 1;
    global.item_stock[10] = 1;
    global.item_stock[11] = 1;
    global.item_stock[12] = 2;
    global.item_stock[13] = 2;
    global.item_stock[14] = 1;
    global.item_stock[15] = 1;
    global.item_stock[16] = 2;
    global.item_stock[17] = 2;
    global.item_stock[18] = 2;
    global.item_stock[19] = 1;
    global.item_stock[20] = 1;
    global.item_stock[21] = 1;
    global.item_stock[22] = 1;
    global.item_stock[23] = 1;
    global.death_count[1] = 0;
    global.death_count[2] = 0;
    global.death_count[3] = 0;
    global.death_count[4] = 0;
    global.death_count[5] = 0;
    global.death_count[6] = 0;
    global.death_count[7] = 0;
    global.death_count_total = 0;
    global.dialogue_open = false;
    global.npc_map = ds_map_create();
    global.talk_map = ds_map_create();
    global.item_used_overworld = undefined;
    global.fast_travel_point = "None";
    global.fast_travel_newroom = -4;
    global.fast_travel_newx = 0;
    global.fast_travel_newy = 0;
    
    for (i = 1; i <= 8; i++)
        global.item_slot[i] = "Nothing";
    
    global.box_slot_list = ds_list_create();
    global.mail_pinned = false;
    global.mail_count = 0;
    global.mail_list_read = ds_list_create();
    global.mail_list = ds_list_create();
    global.mail_unclaimed_list = ds_list_create();
    global.mail_flag[0] = false;
    global.mail_flag[1] = false;
    global.mail_flag[2] = false;
    global.mail_flag[3] = false;
    global.mail_flag[4] = false;
    global.mail_flag[5] = false;
    global.mail_flag[6] = false;
    global.mail_flag[7] = false;
    global.mail_flag[8] = false;
    global.mail_flag[9] = false;
    global.spam_mail_chance = 10;
    global.steal_list = ds_list_create();
    global.fast_travel_list = ds_list_create();
    global.encounter_list = ds_list_create();
    gamepad_set_axis_deadzone(0, global.gamepad_deadzone);
    global.using_gamepad = false;
    global.pause_key = "C";
    global.action_key = "Z";
    global.cancel_key = "X";
    
    if (!instance_exists(obj_controller))
        instance_create(x, y, obj_controller);
    
    if (!instance_exists(obj_radio))
        instance_create(x, y, obj_radio);
    
    if (!instance_exists(obj_pl))
        instance_create(global.player_x, global.player_y, obj_pl);
    
    global.item_slot[1] = "Missing Poster";
    global.fun_value = irandom_range(0, 80);
    global.fun_swig_name = "Swig";
    
    if (global.fun_value == 1)
        global.fun_swig_name = "Dave";
    
    global.fun_event[0] = 0;
    global.fun_event[1] = 0;
    global.menu_sprite = bg_ruins02;
    global.current_room_overworld = -4;
    scr_initialize_battle();
    global.meta_flowey_fight_count = 0;
    global.meta_flowey_introduction_count = 0;
    global.game_finished_pacifist = 0;
    global.game_finished_pacifist_kill = 0;
    global.game_finished_murder = 0;
    
    if (file_exists("Save02.sav"))
    {
        ini_open("Save02.sav");
        global.meta_flowey_introduction_count = ini_read_real("00", "00", 0);
        global.meta_flowey_fight_count = ini_read_real("00", "01", 0);
        ini_close();
    }
}
