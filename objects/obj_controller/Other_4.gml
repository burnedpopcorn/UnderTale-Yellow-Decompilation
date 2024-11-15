switch (room)
{
    case rm_ruins00:
    case rm_snowdin_14b_yellow:
    case rm_dunes_01:
    case rm_dunes_05:
    case rm_dunes_35:
    case rm_hotland_03b:
        global.player_sprites = "normal";
        break;
    
    case rm_snowdin_01_yellow:
    case rm_snowdin_11_yellow:
    case rm_snowdin_14_yellow:
    case rm_snowdin_22_yellow:
        global.player_sprites = "snowdin";
        break;
    
    case rm_dunes_20:
        global.player_sprites = "dunescave";
        break;
}

scr_texture_page_handler();
