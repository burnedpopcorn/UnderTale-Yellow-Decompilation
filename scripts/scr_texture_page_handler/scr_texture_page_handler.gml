function scr_texture_page_handler()
{
    texture_prefetch("GeneralUse");
    texture_prefetch("MainMenu");
    texture_prefetch("BattleBase");
    var _assets_load_new_home = false;
    var _assets_load_ruins = false;
    var _assets_load_snowdin = false;
    var _assets_load_dunes = false;
    var _assets_load_wild_east = false;
    var _assets_load_steamworks = false;
    var _assets_load_waterfall = false;
    var _assets_load_minigames = false;
    var _assets_load_shop = false;
    var _assets_load_hotland = false;
    var _assets_load_mansion = false;
    var _room_tag = asset_get_tags(room, 3);
    
    for (var i = 0; i < array_length(_room_tag); i++)
    {
        switch (_room_tag[i])
        {
            case "Ruins":
                _assets_load_ruins = true;
                break;
            
            case "Snowdin":
                _assets_load_snowdin = true;
                break;
            
            case "Dunes":
                _assets_load_dunes = true;
                break;
            
            case "Wild East":
                _assets_load_wild_east = true;
                break;
            
            case "Steamworks":
                _assets_load_steamworks = true;
                break;
            
            case "Minigame":
                _assets_load_minigames = true;
                break;
            
            case "Waterfall":
                _assets_load_waterfall = true;
                break;
            
            case "Hotland":
                _assets_load_hotland = true;
                break;
            
            case "New Home":
                _assets_load_new_home = true;
                break;
            
            case "Mansion":
                _assets_load_new_home = true;
                break;
            
            case "Shop":
                _assets_load_shop = true;
                break;
        }
    }
    
    if (room == rm_battle)
        exit;
    
    if (_assets_load_ruins == true)
    {
        if (!texture_is_ready("Ruins"))
            show_debug_message("Ruins Textures Loaded");
        
        if (!texture_is_ready("Ruins"))
            texture_prefetch("Ruins");
        
        if (!texture_is_ready("BattleRuins"))
            texture_prefetch("BattleRuins");
    }
    else
    {
        if (texture_is_ready("Ruins"))
            show_debug_message("Ruins Textures Flushed");
        
        if (texture_is_ready("Ruins"))
            texture_flush("Ruins");
        
        if (texture_is_ready("BattleRuins"))
            texture_flush("BattleRuins");
    }
    
    if (_assets_load_snowdin == true)
    {
        if (!texture_is_ready("Snowdin"))
            show_debug_message("Snowdin Textures Loaded");
        
        if (!texture_is_ready("Snowdin"))
            texture_prefetch("Snowdin");
        
        if (!texture_is_ready("BattleSnowdin"))
            texture_prefetch("BattleSnowdin");
    }
    else
    {
        if (texture_is_ready("Snowdin"))
            show_debug_message("Snowdin Textures Flushed");
        
        if (texture_is_ready("Snowdin"))
            texture_flush("Snowdin");
        
        if (texture_is_ready("BattleSnowdin"))
            texture_flush("BattleSnowdin");
    }
    
    if (_assets_load_waterfall == true)
    {
        if (!texture_is_ready("Waterfall"))
            show_debug_message("Waterfall Textures Loaded");
        
        if (!texture_is_ready("Waterfall"))
            texture_prefetch("Waterfall");
    }
    else
    {
        if (texture_is_ready("Waterfall"))
            show_debug_message("Waterfall Textures Flushed");
        
        if (texture_is_ready("Waterfall"))
            texture_flush("Waterfall");
    }
    
    if (_assets_load_dunes == true)
    {
        if (!texture_is_ready("Dunes"))
            show_debug_message("Dunes Textures Loaded");
        
        if (!texture_is_ready("Dunes"))
            texture_prefetch("Dunes");
        
        if (!texture_is_ready("BattleDunes"))
            texture_prefetch("BattleDunes");
    }
    else
    {
        if (texture_is_ready("Dunes"))
            show_debug_message("Dunes Textures Flushed");
        
        if (texture_is_ready("Dunes"))
            texture_flush("Dunes");
        
        if (texture_is_ready("BattleDunes"))
            texture_flush("BattleDunes");
    }
    
    if (_assets_load_wild_east == true)
    {
        if (!texture_is_ready("WildEast"))
            texture_prefetch("WildEast");
        
        if (!texture_is_ready("BattleWildEast"))
            texture_prefetch("BattleWildEast");
    }
    else
    {
        if (texture_is_ready("WildEast"))
            texture_flush("WildEast");
        
        if (texture_is_ready("BattleWildEast"))
            texture_flush("BattleWildEast");
    }
    
    if (_assets_load_steamworks == true)
    {
        if (!texture_is_ready("Steamworks"))
            texture_prefetch("Steamworks");
        
        if (!texture_is_ready("BattleSteamworks"))
            texture_prefetch("BattleSteamworks");
    }
    else
    {
        if (texture_is_ready("Steamworks"))
            texture_flush("Steamworks");
        
        if (texture_is_ready("BattleSteamworks"))
            texture_flush("BattleSteamworks");
    }
    
    if (_assets_load_hotland == true)
    {
        if (!texture_is_ready("Hotland"))
            texture_prefetch("Hotland");
    }
    else if (texture_is_ready("Hotland"))
    {
        texture_flush("Hotland");
    }
    
    if (_assets_load_new_home == true)
    {
        if (!texture_is_ready("newhome"))
            texture_prefetch("newhome");
        
        if (!texture_is_ready("Battlenewhome"))
            texture_prefetch("Battlenewhome");
    }
    else
    {
        if (texture_is_ready("newhome"))
            texture_flush("newhome");
        
        if (!texture_is_ready("Battlenewhome"))
            texture_flush("Battlenewhome");
    }
    
    if (_assets_load_mansion == true)
    {
        if (!texture_is_ready("Mansion"))
            texture_prefetch("Mansion");
    }
    else if (texture_is_ready("Mansion"))
    {
        texture_flush("Mansion");
    }
    
    if (_assets_load_minigames == true)
    {
        if (!texture_is_ready("Minigames"))
            texture_prefetch("Minigames");
    }
    else if (texture_is_ready("Minigames"))
    {
        texture_flush("Minigames");
    }
    
    if (_assets_load_shop == true)
    {
        if (!texture_is_ready("Shops"))
            texture_prefetch("Shops");
    }
    else if (texture_is_ready("Shops"))
    {
        texture_flush("Shops");
    }
}
