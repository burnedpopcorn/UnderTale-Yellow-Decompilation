function scr_determine_world_value_yellow()
{
    var current_room_overworld;
    
    if (room != rm_battle && room != rm_shop && room != rm_mainmenu && room != rm_death_screen)
        global.current_room_overworld = room_get_name(room);
    
    current_room_overworld = global.current_room_overworld;
    
    switch (current_room_overworld)
    {
        case "rm_ruins_01_yellow":
        case "rm_ruins_02_yellow":
        case "rm_ruins_03_yellow":
        case "rm_ruins_04_yellow":
        case "rm_ruins_05_yellow":
        case "rm_ruins_06_yellow":
            return 0;
            break;
        
        case "rm_darkruins_01":
        case "rm_darkruins_02":
        case "rm_darkruins_03":
        case "rm_darkruins_04":
        case "rm_darkruins_05":
        case "rm_darkruins_06":
        case "rm_darkruins_07":
        case "rm_darkruins_08":
        case "rm_darkruins_08b":
        case "rm_darkruins_09":
        case "rm_darkruins_09b":
        case "rm_darkruins_10":
        case "rm_darkruins_11":
        case "rm_darkruins_12":
        case "rm_darkruins_13":
        case "rm_darkruins_14":
        case "rm_darkruins_14b":
        case "rm_darkruins_15":
        case "rm_darkruins_16":
        case "rm_darkruins_16b":
        case "rm_darkruins_16c":
        case "rm_darkruins_17":
        case "rm_darkruins_18":
        case "rm_dalvhallway":
        case "rm_dalvshouse":
        case "rm_dalvsroom":
        case "rm_dalvroomhall":
        case "rm_dalvExit":
            return 1;
            break;
        
        case "rm_snowdin_01_yellow":
        case "rm_snowdin_02_yellow":
        case "rm_snowdin_03_yellow":
        case "rm_snowdin_03b_yellow":
        case "rm_snowdin_04_yellow":
        case "rm_snowdin_05_yellow":
        case "rm_snowdin_06_yellow":
        case "rm_snowdin_07_yellow":
        case "rm_snowdin_08_yellow":
        case "rm_snowdin_08b_yellow":
        case "rm_snowdin_09_yellow":
        case "rm_snowdin_10_yellow":
        case "rm_snowdin_11_yellow":
        case "rm_snowdin_12_yellow":
        case "rm_snowdin_13_yellow":
        case "rm_snowdin_14_yellow":
        case "rm_snowdin_14b_yellow":
        case "rm_snowdin_14c_yellow":
        case "rm_snowdin_14d_yellow":
        case "rm_snowdin_14e_yellow":
        case "rm_snowdin_15_yellow":
        case "rm_snowdin_16_yellow":
        case "rm_snowdin_16b_yellow":
        case "rm_snowdin_17_yellow":
        case "rm_snowdin_18_yellow":
        case "rm_snowdin_19_yellow":
        case "rm_snowdin_20_yellow":
        case "rm_snowdin_21_yellow":
        case "rm_snowdin_22_yellow":
            return 2;
            break;
        
        case "rm_dunes_01":
        case "rm_dunes_02":
        case "rm_dunes_03":
        case "rm_dunes_04":
        case "rm_dunes_05":
        case "rm_dunes_06":
        case "rm_dunes_07":
        case "rm_dunes_08":
        case "rm_dunes_08b":
        case "rm_dunes_09":
        case "rm_dunes_10":
        case "rm_dunes_11":
        case "rm_dunes_12":
        case "rm_dunes_12b":
        case "rm_dunes_13":
        case "rm_dunes_14":
        case "rm_dunes_15":
        case "rm_dunes_16":
        case "rm_dunes_17":
        case "rm_dunes_18":
        case "rm_dunes_19":
        case "rm_dunes_19B":
        case "rm_dunes_20":
        case "rm_dunes_21":
        case "rm_dunes_22":
        case "rm_dunes_23":
        case "rm_dunes_24":
        case "rm_dunes_25":
        case "rm_dunes_25b":
        case "rm_dunes_26":
        case "rm_dunes_28":
        case "rm_dunes_28b":
        case "rm_dunes_28c":
        case "rm_dunes_29":
        case "rm_dunes_29b":
        case "rm_dunes_30":
        case "rm_dunes_30_house_1":
        case "rm_dunes_30_house_2":
        case "rm_dunes_30_house_3":
        case "rm_dunes_30b":
        case "rm_dunes_31":
        case "rm_dunes_32":
        case "rm_dunes_33":
        case "rm_dunes_34":
        case "rm_dunes_35":
        case "rm_dunes_35b":
        case "rm_dunes_36":
        case "rm_dunes_37_barn":
        case "rm_dunes_37_feistyhouse":
        case "rm_dunes_37_hospital":
        case "rm_dunes_37_jail":
        case "rm_dunes_37_saloon":
        case "rm_dunes_37":
        case "rm_dunes_38":
        case "rm_dunes_39":
        case "rm_dunes_40":
        case "rm_dunes_41":
        case "rm_dunes_42":
        case "rm_dunes_42_b":
        case "rm_dunes_42_c":
        case "rm_dunes_42_d":
        case "rm_dunes_43":
        case "rm_mansion_entrance":
            return 3;
            break;
        
        case "rm_steamworks_05":
        case "rm_steamworks_09":
        case "rm_steamworks_15":
        case "rm_steamworks_16":
        case "rm_steamworks_19":
        case "rm_steamworks_22":
        case "rm_steamworks_23":
        case "rm_steamworks_25":
        case "rm_steamworks_26":
        case "rm_steamworks_29":
        case "rm_steamworks_30":
        case "rm_steamworks_30_b":
        case "rm_steamworks_31":
        case "rm_steamworks_32":
        case "rm_steamworks_chem_02":
        case "rm_steamworks_chem_03":
        case "rm_steamworks_chem_04":
        case "rm_steamworks_chem_05":
        case "rm_steamworks_chem_06":
        case "rm_steamworks_chem_07":
        case "rm_steamworks_factory_01":
        case "rm_steamworks_factory_04":
        case "rm_steamworks_34":
        case "rm_steamworks_35":
        case "rm_steamworks_36":
        case "rm_steamworks_macro_froggit_room":
            return 4;
            break;
        
        case "rm_hotland_complex_1":
            return 5;
            break;
        
        default:
            show_debug_message("WARNING NO KILL WORLD/ARENA PRESENT");
            global.kill_area_current = 0;
            return 0;
            break;
    }
}
