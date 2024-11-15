function scr_savegame_flowey()
{
    var SavedRoom, ds_list_encounters, ds_list_steal, ds_list_fasttravel, inv1, ds_list_string, i, ds_map_string, ds_talk_map_string, j;
    
    ini_open("Save.sav");
    ini_write_real("Save1", "pX", obj_pl.x);
    ini_write_real("Save1", "pY", obj_pl.y);
    ini_write_real("Save1", "dir", obj_pl.direction);
    SavedRoom = room;
    ini_write_real("Save1", "HP", global.current_hp_self);
    ini_write_real("Save1", "MAXHP", global.max_hp_self);
    ini_write_real("Save1", "PP", global.current_pp_self);
    ini_write_real("Save1", "MAXPP", global.max_pp_self);
    ini_write_real("Save1", "SP", global.current_sp_self);
    ini_write_real("Save1", "MAXSP", global.max_sp_self);
    ini_write_real("Save1", "RP", global.current_rp_self);
    ini_write_real("Save1", "MAXRP", global.max_rp_self);
    ini_write_real("Save1", "AT - Primary", global.player_attack);
    ini_write_real("Save1", "AT - Secondary", global.player_weapon_modifier_attack);
    ini_write_real("Save1", "DFP", global.player_defense);
    ini_write_real("Save1", "DFS", global.player_armor_modifier_defense);
    ini_write_real("Save1", "LV", global.player_level);
    ini_write_real("Save1", "EXP", global.player_exp);
    ini_write_real("Save1", "Gold", global.player_gold);
    ini_write_string("Save1", "Armor", global.player_armor);
    ini_write_string("Save1", "Weapon", global.player_weapon);
    ini_write_string("Save1", "Ammo", global.player_weapon_modifier);
    ini_write_string("Save1", "Accessory", global.player_armor_modifier);
    ini_write_string("Save1", "rmName", "???");
    ini_write_string("Save1", "playerSprite", global.player_sprites);
    ini_write_real("Save1", "playerCanRun", global.player_can_run);
    
    if (global.party_member == -4)
        ini_write_string("Save1", "Follower", "noone");
    else
        ini_write_string("Save1", "Follower", object_get_name(global.party_member));
    
    ini_write_real("Save1", "Satchel", global.player_has_satchel);
    ini_write_real("Save1", "FTravel", global.player_can_travel);
    scr_determine_playtime();
    ini_write_real("Playtime", "Seconds", global.elapsed_seconds);
    ds_list_encounters = ds_list_write(global.encounter_list);
    ini_write_string("Encounters", "0", ds_list_encounters);
    ds_list_steal = ds_list_write(global.steal_list);
    ini_write_string("Steal", "0", ds_list_steal);
    ds_list_fasttravel = ds_list_write(global.fast_travel_list);
    ini_write_string("FastTravel", "0", ds_list_fasttravel);
    inv1 = global.item_slot[1];
    ini_write_string("Items", "00", global.item_slot[1]);
    ini_write_string("Items", "01", global.item_slot[2]);
    ini_write_string("Items", "02", global.item_slot[3]);
    ini_write_string("Items", "03", global.item_slot[4]);
    ini_write_string("Items", "04", global.item_slot[5]);
    ini_write_string("Items", "05", global.item_slot[6]);
    ini_write_string("Items", "06", global.item_slot[7]);
    ini_write_string("Items", "07", global.item_slot[8]);
    ds_list_string = ds_list_write(global.box_slot_list);
    ini_write_string("DBox", "0", ds_list_string);
    ini_write_real("Misc", "01", global.tinypuzzle);
    
    for (i = 0; i < array_length_1d(global.ruins_flag); i++)
        ini_write_real("RuinsFlags", string(i), global.ruins_flag[i]);
    
    for (i = 0; i < array_length_1d(global.flag); i++)
        ini_write_real("Flags", string(i), global.flag[i]);
    
    for (i = 0; i < array_length_1d(global.snowdin_flag); i++)
        ini_write_real("SnowdinFlags", string(i), global.snowdin_flag[i]);
    
    for (i = 0; i < array_length_1d(global.dunes_flag); i++)
        ini_write_real("DunesFlags", string(i), global.dunes_flag[i]);
    
    for (i = 0; i < array_length_1d(global.dunes_flag_ext); i++)
        ini_write_real("DunesFlagsExt", string(i), global.dunes_flag_ext[i]);
    
    for (i = 0; i < array_length_1d(global.sworks_flag); i++)
        ini_write_real("SworksFlags", string(i), global.sworks_flag[i]);
    
    ini_write_string("SworksFlags", "code", global.factory_code);
    ds_list_string = ds_list_write(global.factory_code_2);
    ini_write_string("SworksFlags", "code2", ds_list_string);
    ini_write_string("SworksFlags", "code3", global.factory_code_3);
    ini_write_real("SworksFlags", "RbCount", global.sworks_robot_count);
    
    for (i = 0; i < global.sworks_robot_count; i++)
    {
        ini_write_real("RbSprite", string(i), global.sworks_robot_sprite[i]);
        ini_write_real("RbX", string(i), global.sworks_robot_x[i]);
        ini_write_real("RbY", string(i), global.sworks_robot_y[i]);
        ini_write_real("RbD", string(i), global.sworks_robot_depth[i]);
        ini_write_real("RbS", string(i), global.sworks_robot_scale[i]);
        ini_write_real("RbA", string(i), global.sworks_robot_angle[i]);
    }
    
    ini_write_string("SworksFlags", "sworks_id", ds_grid_write(global.sworks_id_grid));
    
    for (i = 0; i < array_length_1d(global.item_stock); i++)
        ini_write_real("ItemStock", string(i), global.item_stock[i]);
    
    for (i = 0; i < array_length_1d(global.hotland_flag); i++)
        ini_write_real("HotlandFlags", string(i), global.hotland_flag[i]);
    
    for (i = 0; i < array_length_1d(global.flowey_flag); i++)
        ini_write_real("FloweyFlags", string(i), global.flowey_flag[i]);
    
    ini_write_real("FloweyFlags", "savenumber", global.flowey_save_number);
    
    for (i = 0; i < array_length_1d(global.extra_flag); i++)
        ini_write_real("ExtraFlags", string(i), global.extra_flag[i]);
    
    for (i = 0; i < array_length_1d(global.mail_flag); i++)
        ini_write_real("MailFlags", string(i), global.mail_flag[i]);
    
    ds_list_string = ds_list_write(global.mail_list);
    ini_write_string("Mail", "0", ds_list_string);
    ds_list_string = ds_list_write(global.mail_unclaimed_list);
    ini_write_string("MailUnclaimed", "0", ds_list_string);
    ini_write_real("Mail", "1", global.mail_count);
    
    for (i = 0; i <= 5; i++)
        ini_write_real("Misc", string(i + 2), global.sideNpc[i]);
    
    ds_map_string = ds_map_write(global.npc_map);
    ini_write_string("NPCs", "0", ds_map_string);
    ds_talk_map_string = ds_map_write(global.talk_map);
    ini_write_string("Talks", "0", ds_talk_map_string);
    ini_write_real("Misc2", "00", global.interaction_count_wardrobe);
    ini_write_real("Misc2", "01", global.interaction_count_broom);
    ini_write_real("Misc2", "02", global.interaction_count_mini_fridge);
    ini_write_real("Misc2", "03", global.interaction_count_painting);
    ini_write_real("Misc2", "04", global.interaction_count_dalvsroom_chest);
    ini_write_real("Misc2", "05", global.interaction_count_flower_pot);
    ini_write_real("Misc2", "06", global.interaction_count_doorway_dalvshouse);
    ini_write_real("Misc2", "07", global.interaction_count_dalvroomhall_door);
    ini_write_real("Misc2", "08", global.dalv_house_enter_count);
    ini_write_real("Misc2", "09", global.interaction_count_books);
    ini_write_real("Deaths", "00", global.death_count_total);
    ini_write_real("Deaths", "01", global.death_count[1]);
    ini_write_real("Deaths", "02", global.death_count[2]);
    ini_write_real("Route", "00", global.route);
    
    for (i = 1; i < array_length_1d(global.geno_complete); i++)
        ini_write_real("GenoComplete", i, global.geno_complete[i]);
    
    for (i = 1; i < array_length_1d(global.kill_number); i++)
    {
        ini_write_real("Kills", i, global.kill_number[i]);
        
        for (j = 0; j < array_length_2d(global.kill_area, i); j++)
            ini_write_real("Kill Area", string(i) + string(j), global.kill_area[i][j]);
    }
    
    ini_write_real("Save1", "FUN", global.fun_value);
    ini_write_string("Save1", "Menu", sprite_get_name(global.menu_sprite));
    
    if (variable_global_exists("gold_amount_total"))
        ini_write_real("Save1", "gldtrack", global.gold_amount_total);
    
    if (variable_global_exists("gold_spent"))
        ini_write_real("Save1", "gldspnttrack", global.gold_spent);
    
    if (variable_global_exists("hit_tracker"))
        ini_write_real("Save1", "httrack", global.hit_tracker);
    
    if (global.battle_enemy_name == "flowey")
    {
        global.fighting_flowey = 1;
        ini_write_real("Misc2", "10", global.fighting_flowey);
    }
    else if (global.battle_enemy_name == "flowey2")
    {
        global.fighting_flowey = 2;
        ini_write_real("Misc2", "10", global.fighting_flowey);
    }
    
    ini_close();
}
