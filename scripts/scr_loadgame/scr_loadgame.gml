function scr_loadgame()
{
    if (file_exists("Save.sav"))
    {
        scr_initialize();
        ini_open("Save.sav");
        var LoadedRoom = ini_read_string("Save1", "room", "rm_ruins00");
        obj_pl.x = ini_read_real("Save1", "pX", 320);
        obj_pl.y = ini_read_real("Save1", "pY", 320);
        obj_pl.direction = ini_read_real("Save1", "dir", 0);
        obj_controller.steps = ini_read_real("Save1", "SP", 0);
        global.player_attack = ini_read_real("Save1", "AT - Primary", 0);
        global.player_weapon_modifier_attack = ini_read_real("Save1", "AT - Secondary", 0);
        global.player_defense = ini_read_real("Save1", "DFP", 0);
        global.player_armor_modifier_defense = ini_read_real("Save1", "DFS", 0);
        global.player_level = ini_read_real("Save1", "LV", 1);
        global.player_exp = ini_read_real("Save1", "EXP", 0);
        global.player_weapon_modifier = ini_read_string("Save1", "Ammo", "Rubber Ammo");
        global.player_armor = ini_read_string("Save1", "Armor", "Worn Hat");
        global.player_armor_modifier = ini_read_string("Save1", "Accessory", "Patch");
        global.player_gold = ini_read_real("Save1", "Gold", 0);
        global.current_hp_self = ini_read_real("Save1", "HP", 1);
        global.max_hp_self = ini_read_real("Save1", "MAXHP", 20);
        global.player_weapon = ini_read_string("Save1", "Weapon", "Toy Gun");
        global.fun_value = ini_read_real("Save1", "FUN", 0);
        global.current_pp_self = ini_read_real("Save1", "PP", 0);
        global.max_pp_self = ini_read_real("Save1", "MAXPP", 20);
        global.current_sp_self = ini_read_real("Save1", "SP", 0);
        global.max_sp_self = ini_read_real("Save1", "MAXSP", 99);
        global.player_sprites = ini_read_string("Save1", "playerSprite", "normal");
        global.current_rp_self = ini_read_real("Save1", "RP", 0);
        global.max_rp_self = ini_read_real("Save1", "MAXRP", 0);
        global.player_can_run = ini_read_real("Save1", "playerCanRun", 1);
        global.saved_datetime = date_current_datetime();
        global.elapsed_seconds = ini_read_real("Playtime", "Seconds", 0);
        var _party_member = ini_read_string("Save1", "Follower", "noone");
        
        if (_party_member == "noone")
            global.party_member = -4;
        else
            global.party_member = asset_get_index(_party_member);
        
        global.player_has_satchel = ini_read_real("Save1", "Satchel", 0);
        global.player_can_travel = ini_read_real("Save1", "FTravel", 0);
        
        for (var i = 0; i < array_length_1d(global.ruins_flag); i++)
            global.ruins_flag[i] = ini_read_real("RuinsFlags", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.flag); i++)
            global.flag[i] = ini_read_real("Flags", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.snowdin_flag); i++)
            global.snowdin_flag[i] = ini_read_real("SnowdinFlags", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.dunes_flag); i++)
            global.dunes_flag[i] = ini_read_real("DunesFlags", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.dunes_flag_ext); i++)
            global.dunes_flag_ext[i] = ini_read_real("DunesFlagsExt", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.sworks_flag); i++)
            global.sworks_flag[i] = ini_read_real("SworksFlags", string(i), false);
        
        global.factory_code = ini_read_string("SworksFlags", "code", "0000");
        global.factory_code_3 = ini_read_string("SworksFlags", "code3", "0000");
        var ds_factory_code_2 = ini_read_string("SworksFlags", "code2", "");
        ds_list_read(global.factory_code_2, ds_factory_code_2);
        global.sworks_robot_count = ini_read_real("SworksFlags", "RbCount", 0);
        
        for (var i = 0; i < global.sworks_robot_count; i++)
        {
            global.sworks_robot_sprite[i] = ini_read_real("RbSprite", string(i), 0);
            global.sworks_robot_x[i] = ini_read_real("RbX", string(i), 0);
            global.sworks_robot_y[i] = ini_read_real("RbY", string(i), 0);
            global.sworks_robot_depth[i] = ini_read_real("RbD", string(i), 0);
            global.sworks_robot_scale[i] = ini_read_real("RbS", string(i), 0);
            global.sworks_robot_angle[i] = ini_read_real("RbA", string(i), 0);
        }
        
        ds_grid_read(global.sworks_id_grid, ini_read_string("SworksFlags", "sworks_id", ""));
        
        for (var i = 0; i < array_length_1d(global.item_stock); i++)
            global.item_stock[i] = ini_read_real("ItemStock", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.hotland_flag); i++)
            global.hotland_flag[i] = ini_read_real("HotlandFlags", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.flowey_flag); i++)
            global.flowey_flag[i] = ini_read_real("FloweyFlags", string(i), false);
        
        global.flowey_save_number = ini_read_real("FloweyFlags", "savenumber", 0);
        global.save_count = ini_read_real("FloweyFlags", "savecount", 1);
        
        for (var i = 0; i < array_length_1d(global.extra_flag); i++)
            global.extra_flag[i] = ini_read_real("ExtraFlags", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.mail_flag); i++)
            global.mail_flag[i] = ini_read_real("MailFlags", string(i), false);
        
        for (var i = 0; i < array_length_1d(global.mail_flag); i++)
            global.mail_flag[i] = ini_read_real("MailFlags", string(i), false);
        
        global.mail_count = ini_read_real("Mail", "1", 0);
        global.mail_pinned = ini_read_real("Mail", "2", 0);
        global.tinypuzzle = ini_read_real("Misc", "01", 5);
        deaths = ini_read_real("Misc", "Deaths", false);
        
        for (var i = 0; i < array_length(global.fun_event); i++)
            global.fun_event[i] = ini_read_real("Fun Events", string(i), 0);
        
        for (var i = 1; i <= 8; i++)
            global.item_slot[i] = ini_read_string("Items", "0" + string(i - 1), "Nothing");
        
        var ds_list_string = ini_read_string("DBox", 0, "0");
        ds_list_read(global.box_slot_list, ds_list_string);
        ds_list_string = ini_read_string("Mail", 0, "0");
        ds_list_read(global.mail_list, ds_list_string);
        ds_list_string = ini_read_string("Mail", "3", "0");
        ds_list_read(global.mail_list_read, ds_list_string);
        ds_list_string = ini_read_string("MailUnclaimed", 0, "0");
        ds_list_read(global.mail_unclaimed_list, ds_list_string);
        var ds_list_encounters = ini_read_string("Encounters", 0, "0");
        ds_list_read(global.encounter_list, ds_list_encounters);
        var ds_list_steal = ini_read_string("Steal", 0, "0");
        ds_list_read(global.steal_list, ds_list_steal);
        var ds_list_fasttravel = ini_read_string("FastTravel", 0, "0");
        ds_list_read(global.fast_travel_list, ds_list_fasttravel);
        var ds_map_string = ini_read_string("NPCs", "0", "0");
        ds_map_read(global.npc_map, ds_map_string);
        var ds_talk_map_string = ini_read_string("Talks", "0", "0");
        ds_map_read(global.talk_map, ds_map_string);
        global.interaction_count_wardrobe = ini_read_real("Misc2", "00", 0);
        global.interaction_count_broom = ini_read_real("Misc2", "01", 0);
        global.interaction_count_mini_fridge = ini_read_real("Misc2", "02", 0);
        global.interaction_count_painting = ini_read_real("Misc2", "03", 0);
        global.interaction_count_dalvsroom_chest = ini_read_real("Misc2", "04", 0);
        global.interaction_count_flower_pot = ini_read_real("Misc2", "05", 0);
        global.interaction_count_doorway_dalvshouse = ini_read_real("Misc2", "06", 0);
        global.interaction_count_dalvroomhall_door = ini_read_real("Misc2", "07", 0);
        global.dalv_house_enter_count = ini_read_real("Misc2", "08", 0);
        global.interaction_count_books = ini_read_real("Misc2", "09", 0);
        deathText = ini_read_real("Misc2", "10", 0);
        global.route = ini_read_real("Route", "00", 2);
        
        for (var i = 1; i < array_length_1d(global.geno_complete); i++)
            global.geno_complete[i] = ini_read_real("GenoComplete", i, 0);
        
        for (var i = 1; i < array_length_1d(global.kill_number); i++)
        {
            global.kill_number[i] = ini_read_real("Kills", i, 20);
            
            for (var j = 0; j < array_length_2d(global.kill_area, i); j++)
                global.kill_area[i][j] = ini_read_real("Kill Area", string(i) + string(j), 5);
        }
        
        global.gold_amount_total = ini_read_real("Save1", "gldtrack", 0);
        global.gold_spent = ini_read_real("Save1", "gldspnttrack", 0);
        global.hit_tracker = ini_read_real("Save1", "httrack", 0);
        global.fighting_flowey = ini_read_real("Misc2", "10", 0);
        
        if (global.fighting_flowey == 0)
        {
            room_goto(asset_get_index(LoadedRoom));
        }
        else if (global.fighting_flowey == 1)
        {
            instance_create_depth(camera_get_view_x(view_camera[0]) + 320, camera_get_view_y(view_camera[0]) + 120, -99999, obj_flowey_rooftop_big);
            obj_flowey_rooftop_big.persistent = true;
            obj_flowey_rooftop_big.image_xscale_base *= 2;
            obj_flowey_rooftop_big.image_yscale_base *= 2;
            var controller = instance_create_depth(0, 0, -9999, obj_flowey_world_controller);
            controller.scene = 95;
            instance_create(0, 0, obj_battle_fade_in_screen);
            obj_battle_fade_in_screen.persistent = true;
            obj_battle_fade_in_screen.fade_speed = 0.025;
            room_goto(rm_battle_flowey);
            
            if (!texture_is_ready("BattleHotlandFloweyPhase1"))
                texture_prefetch("BattleHotlandFloweyPhase1");
            
            global.battling_boss = true;
            global.battle_start = true;
            global.sound_carry_overworld = false;
            scr_cutscene_start();
            global.battle_enemy_name = "flowey";
            obj_pl.image_alpha = 0;
        }
        else if (global.fighting_flowey == 2)
        {
            global.flowey_phase_2_noloop = true;
            room_goto(rm_battle_flowey_phase_2);
            
            if (!texture_is_ready("BattleHotlandFloweyPaper"))
                texture_prefetch("BattleHotlandFloweyPaper");
            
            if (!texture_is_ready("BattleHotlandFloweyGray"))
                texture_prefetch("BattleHotlandFloweyGray");
            
            if (!texture_is_ready("BattleHotlandFloweyClay"))
                texture_prefetch("BattleHotlandFloweyClay");
            
            if (!texture_is_ready("BattleHotlandFloweyMechanical"))
                texture_prefetch("BattleHotlandFloweyMechanical");
            
            if (!texture_is_ready("BattleHotlandFloweyLowpoly"))
                texture_prefetch("BattleHotlandFloweyLowpoly");
            
            if (!texture_is_ready("BattleHotlandFloweyYarn"))
                texture_prefetch("BattleHotlandFloweyYarn");
            
            if (!texture_is_ready("BattleHotlandFloweyOrganic"))
                texture_prefetch("BattleHotlandFloweyOrganic");
            
            global.battling_boss = true;
            global.battle_start = true;
            global.sound_carry_overworld = false;
            global.cutscene = true;
            global.battle_enemy_name = "flowey2";
            obj_pl.image_alpha = 0;
        }
        
        if (global.party_member != -4 && !instance_exists(global.party_member))
            instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, global.party_member);
        
        ini_close();
        
        if (file_exists("Save02.sav"))
        {
            ini_open("Save02.sav");
            global.meta_flowey_fight_count = ini_read_real("00", "01", 0);
            global.death_count_total = ini_read_real("Deaths", "00", 0);
            global.death_count[1] = ini_read_real("Deaths", "01", 0);
            global.death_count[2] = ini_read_real("Deaths", "02", 0);
            ini_close();
        }
        
        if (global.fun_value == 1)
            global.fun_swig_name = "Dave";
    }
}
