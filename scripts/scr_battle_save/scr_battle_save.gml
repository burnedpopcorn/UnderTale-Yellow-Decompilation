function scr_battle_save()
{
    var inv1, list_string, i;
    
    if (file_exists("tempsave.sav"))
        file_delete("tempsave.sav");
    
    ini_open("tempsave.sav");
    ini_write_real("Save1", "HP", global.current_hp_self);
    ini_write_real("Save1", "MAXHP", global.max_hp_self);
    ini_write_real("Save1", "PP", global.current_pp_self);
    ini_write_real("Save1", "MAXPP", global.max_pp_self);
    ini_write_real("Save1", "SP", global.current_sp_self);
    ini_write_real("Save1", "MAXSP", global.max_sp_self);
    ini_write_real("Save1", "AT - Primary", global.player_attack);
    ini_write_real("Save1", "AT - Secondary", global.player_weapon_modifier_attack);
    ini_write_real("Save1", "DFP", global.player_defense);
    ini_write_real("Save1", "DFS", global.player_armor_modifier_defense);
    ini_write_real("Save1", "LV", global.player_level);
    ini_write_real("Save1", "EXP", global.player_exp);
    ini_write_real("Save1", "Gold", global.player_gold);
    ini_write_string("Save1", "Armor", global.player_armor);
    ini_write_string("Save1", "Ammo", global.player_weapon_modifier);
    ini_write_string("Save1", "Weapon", global.player_weapon);
    ini_write_string("Save1", "Accessory", global.player_armor_modifier);
    ini_write_string("Save1", "rmName", global.saveroom);
    ini_write_string("Save1", "playerSprite", global.player_sprites);
    ini_write_real("Save1", "ffight", global.fighting_flowey);
    
    if (instance_exists(obj_radio))
        ini_write_real("Save1", "owms", obj_radio.bgm);
    
    inv1 = global.item_slot[1];
    ini_write_string("Items", "00", global.item_slot[1]);
    ini_write_string("Items", "01", global.item_slot[2]);
    ini_write_string("Items", "02", global.item_slot[3]);
    ini_write_string("Items", "03", global.item_slot[4]);
    ini_write_string("Items", "04", global.item_slot[5]);
    ini_write_string("Items", "05", global.item_slot[6]);
    ini_write_string("Items", "06", global.item_slot[7]);
    ini_write_string("Items", "07", global.item_slot[8]);
    
    if (global.battle_enemy_name == "flowey")
    {
        ini_write_real("Special", "0", global.flowey_battle_1_phase);
        list_string = ds_list_write(global.flowey_attack_list);
        ini_write_string("Special", "1", list_string);
        list_string = ds_list_write(global.flowey_stolen_attack_list);
        ini_write_string("Special", "2", list_string);
        list_string = ds_list_write(global.flowey_room_list);
        ini_write_string("Special", "3", list_string);
        ini_write_real("Special", "4", global.flowey_attack_number);
    }
    else if (global.battle_enemy_name == "flowey2")
    {
        for (i = 0; i < array_length(obj_flowey_battle_final.petal_alive); i++)
            ini_write_real("petal", string(i), obj_flowey_battle_final.petal_alive[i]);
        
        ini_write_real("petal", "count", obj_flowey_battle_final.petal_count);
    }
    
    ini_close();
}
