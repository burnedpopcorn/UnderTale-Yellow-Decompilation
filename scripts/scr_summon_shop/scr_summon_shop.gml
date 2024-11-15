function scr_summon_shop(argument0)
{
    global.current_room_overworld = room_get_name(room);
    
    switch (argument0)
    {
        case "Wild East Gunshop":
            global.sound_carry_overworld = false;
            
            if (global.dunes_flag[20] == 9 && (global.dunes_flag[24] == 0 || global.dunes_flag[24] == 2))
                global.sound_carry_overworld = true;
            
            break;
        
        default:
            global.sound_carry_overworld = true;
            break;
    }
    
    global.shop_name = argument0;
    instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, obj_quote_battle_ceroba_outro_4), obj_overworld_shop_fade_out_screen);
    scr_cutscene_start();
}
