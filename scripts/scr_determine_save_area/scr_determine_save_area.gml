function scr_determine_save_area()
{
    var current_room;
    
    current_room = room_get_name(room);
    
    switch (current_room)
    {
        case "rm_darkruins_03":
            current_save_number = 1;
            global.saveroom = "Dark Ruins - Entrance";
            break;
        
        case "rm_darkruins_08":
            current_save_number = 2;
            global.saveroom = "Dark Ruins - Atrium";
            break;
        
        case "rm_darkruins_10":
            current_save_number = 3;
            global.saveroom = "Dark Ruins - Cliff";
            break;
        
        case "rm_darkruins_12":
            current_save_number = 4;
            global.saveroom = "Dark Ruins - Puzzle";
            break;
        
        case "rm_darkruins_16":
            current_save_number = 5;
            global.saveroom = "Dark Ruins - Hall";
            break;
        
        case "rm_snowdin_03_yellow":
            current_save_number = 1;
            global.saveroom = "Snowdin - Delta Rock";
            break;
        
        case "rm_snowdin_08_yellow":
            current_save_number = 2;
            global.saveroom = "Snowdin - Ruined Shack";
            break;
        
        case "rm_snowdin_12_yellow":
            current_save_number = 3;
            global.saveroom = "Snowdin - Pathway";
            break;
        
        case "rm_snowdin_14_yellow":
            current_save_number = 4;
            global.saveroom = "Snowdin - Resort";
            break;
        
        case "rm_snowdin_20_yellow":
            current_save_number = 5;
            global.saveroom = "Snowdin - Corridor";
            break;
        
        case "rm_dunes_02":
            current_save_number = 1;
            global.saveroom = "Dunes - Cave";
            break;
        
        case "rm_dunes_08":
            current_save_number = 2;
            global.saveroom = "Dunes - Tree";
            break;
        
        case "rm_dunes_14":
            current_save_number = 3;
            global.saveroom = "Mines - Elevator";
            break;
        
        case "rm_dunes_20":
            current_save_number = 4;
            global.saveroom = "Mines - Minecart";
            break;
        
        case "rm_dunes_25":
            current_save_number = 5;
            global.saveroom = "Dunes - Mountaintop";
            break;
        
        case "rm_dunes_28":
            current_save_number = 6;
            global.saveroom = "Dunes - Playground";
            break;
        
        case "rm_dunes_34":
            current_save_number = 7;
            global.saveroom = "Dunes - Well";
            break;
        
        case "rm_dunes_37":
            current_save_number = 8;
            global.saveroom = "Wild East - Town";
            break;
        
        case "rm_dunes_39":
            current_save_number = 9;
            global.saveroom = "Wild East - Outskirts";
            break;
        
        case "rm_dunes_41":
            current_save_number = 10;
            global.saveroom = "Wild East - Sunnyside";
            break;
        
        case "rm_steamworks_05":
            current_save_number = 11;
            global.saveroom = "Steamw. - Generator";
            break;
        
        case "rm_steamworks_09":
            current_save_number = 12;
            global.saveroom = "Steamw. - Raised Path";
            break;
        
        case "rm_steamworks_15":
            current_save_number = 13;
            global.saveroom = "Steamw. - Lake";
            break;
        
        case "rm_steamworks_19":
            current_save_number = 14;
            global.saveroom = "Steamw. - Offices";
            break;
        
        case "rm_steamworks_macro_froggit_room":
            current_save_number = 14;
            global.saveroom = "Steamw. - ???";
            break;
        
        case "rm_steamworks_23":
            current_save_number = 15;
            global.saveroom = "Steamw. - Commons";
            break;
        
        case "rm_steamworks_29":
            current_save_number = 16;
            global.saveroom = "Greenhouse";
            break;
        
        case "rm_steamworks_30":
            current_save_number = 17;
            global.saveroom = "Steamw. - Crossroads";
            break;
        
        case "rm_steamworks_chem_03":
            current_save_number = 18;
            global.saveroom = "Steamw. - Laboratory";
            break;
        
        case "rm_steamworks_chem_06":
            current_save_number = 19;
            global.saveroom = "Steamw. - Botany Hall";
            break;
        
        case "rm_steamworks_factory_01":
            current_save_number = 20;
            global.saveroom = "Factory - Lobby";
            break;
        
        case "rm_steamworks_factory_04":
            current_save_number = 21;
            global.saveroom = "Factory - Offices";
            break;
        
        case "rm_steamworks_34":
            current_save_number = 22;
            global.saveroom = "The Furnace";
            break;
        
        case "rm_steamworks_36":
            current_save_number = 23;
            global.saveroom = "A Road Ahead";
            break;
        
        case "rm_mansion_entrance":
            current_save_number = 24;
            global.saveroom = "Estate";
            break;
        
        case "rm_hotland_complex_1":
            current_save_number = 25;
            global.saveroom = "Apt. Complex";
            break;
        
        case "rm_newhome_02":
            current_save_number = 26;
            global.saveroom = "New Home";
            break;
        
        case "rm_newhome_03":
            current_save_number = 27;
            global.saveroom = "New Home";
            break;
    }
}
