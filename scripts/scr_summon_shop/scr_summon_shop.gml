function scr_summon_shop(arg0)
{
    global.current_room_overworld = room_get_name(room);
    
    switch (arg0)
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
    
    global.shop_name = arg0;
    instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), obj_overworld_shop_fade_out_screen);
    scr_cutscene_start();
}
