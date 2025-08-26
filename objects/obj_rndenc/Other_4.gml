var specific_encounter = "null";

switch (room)
{
    case rm_darkruins_13:
        specific_encounter = "flier trio";
        
        if (global.flag[17] != 0)
            specific_encounter = "null";
        
        break;
}

if (specific_encounter != "null")
    ds_list_add(global.encounter_list, specific_encounter);

scr_determine_world_value_yellow();

switch (room)
{
    case rm_darkruins_04:
        global.kill_area_current = 0;
        break;
    
    case rm_darkruins_06:
        global.kill_area_current = 1;
        break;
    
    case rm_darkruins_10:
        global.kill_area_current = 2;
        break;
    
    case rm_darkruins_08:
        global.kill_area_current = 3;
        break;
    
    case rm_darkruins_09:
        global.kill_area_current = 4;
        break;
    
    case rm_darkruins_12:
        global.kill_area_current = 5;
        break;
    
    case rm_darkruins_13:
        global.kill_area_current = 6;
        break;
    
    case rm_snowdin_04_yellow:
        global.kill_area_current = 0;
        break;
    
    case rm_snowdin_05_yellow:
        global.kill_area_current = 1;
        break;
    
    case rm_snowdin_08_yellow:
        global.kill_area_current = 2;
        break;
    
    case rm_snowdin_10_yellow:
        global.kill_area_current = 3;
        break;
    
    case rm_snowdin_14c_yellow:
        global.kill_area_current = 4;
        break;
    
    case rm_snowdin_15_yellow:
        global.kill_area_current = 5;
        break;
    
    case rm_snowdin_17_yellow:
        global.kill_area_current = 6;
        break;
    
    case rm_snowdin_18_yellow:
        global.kill_area_current = 7;
        break;
    
    case rm_dunes_03:
        global.kill_area_current = 0;
        break;
    
    case rm_dunes_04:
        global.kill_area_current = 1;
        break;
    
    case rm_dunes_05:
        global.kill_area_current = 2;
        break;
    
    case rm_dunes_06:
        global.kill_area_current = 3;
        break;
    
    case rm_dunes_07:
        global.kill_area_current = 4;
        break;
    
    case rm_dunes_09:
        global.kill_area_current = 5;
        break;
    
    case rm_dunes_10:
        global.kill_area_current = 6;
        break;
    
    case rm_dunes_15:
        global.kill_area_current = 7;
        break;
    
    case rm_dunes_29:
        global.kill_area_current = 8;
        break;
    
    case rm_steamworks_16:
        global.kill_area_current = 0;
        break;
    
    case rm_steamworks_19:
        global.kill_area_current = 1;
        break;
    
    case rm_steamworks_22:
        global.kill_area_current = 2;
        break;
    
    case rm_steamworks_25:
        global.kill_area_current = 3;
        break;
    
    case rm_steamworks_26:
        global.kill_area_current = 4;
        break;
    
    case rm_steamworks_30:
        global.kill_area_current = 5;
        break;
    
    case rm_steamworks_chem_02:
        global.kill_area_current = 6;
        break;
    
    case rm_steamworks_chem_03:
        global.kill_area_current = 7;
        break;
    
    case rm_steamworks_chem_04:
        global.kill_area_current = 8;
        break;
    
    case rm_steamworks_chem_06:
        global.kill_area_current = 9;
        break;
    
    case rm_steamworks_chem_07:
        global.kill_area_current = 10;
        break;
    
    case rm_steamworks_30_b:
        global.kill_area_current = 11;
        break;
    
    case rm_steamworks_32:
        global.kill_area_current = 12;
        break;
    
    case rm_steamworks_35:
        global.kill_area_current = 13;
        break;
}
