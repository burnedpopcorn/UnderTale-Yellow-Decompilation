function scr_battle_load()
{
    if (file_exists("tempsave.sav"))
    {
        ini_open("tempsave.sav");
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
        global.current_hp_self = ini_read_real("Save1", "HP", 20);
        global.max_hp_self = ini_read_real("Save1", "MAXHP", 20);
        global.current_pp_self = ini_read_real("Save1", "PP", 0);
        global.max_pp_self = ini_read_real("Save1", "MAXPP", 20);
        global.current_sp_self = ini_read_real("Save1", "SP", 0);
        global.max_sp_self = ini_read_real("Save1", "MAXSP", 99);
        global.player_sprites = ini_read_string("Save1", "playerSprite", "normal");
        
        if (instance_exists(obj_radio))
            obj_radio.bgm = ini_read_real("Save1", "owms", -4);
        
        for (var i = 1; i <= 8; i++)
            global.item_slot[i] = ini_read_string("Items", "0" + string(i - 1), "Nothing");
        
        if (global.battle_enemy_name == "flowey")
        {
            if (variable_global_exists(global.flowey_attack_list) && ds_exists(global.flowey_attack_list, ds_type_list))
            {
                ds_list_clear(global.flowey_attack_list);
                ds_list_clear(global.flowey_stolen_attack_list);
                ds_list_clear(global.flowey_room_list);
            }
            
            global.flowey_battle_1_phase = ini_read_real("Special", "0", 0);
            
            if (global.flowey_battle_1_phase > 1)
            {
                global.flowey_attack_list = ds_list_create();
                global.flowey_stolen_attack_list = ds_list_create();
                global.flowey_room_list = ds_list_create();
                var list_string = ini_read_string("Special", "1", "");
                ds_list_read(global.flowey_attack_list, list_string);
                list_string = ini_read_string("Special", "2", "");
                ds_list_read(global.flowey_stolen_attack_list, list_string);
                list_string = ini_read_string("Special", "3", "");
                ds_list_read(global.flowey_room_list, list_string);
                global.flowey_attack_number = ini_read_real("Special", "4", 0);
            }
        }
        
        ini_close();
    }
}
