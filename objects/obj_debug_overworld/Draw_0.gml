draw_set_font(fnt_crypt_of_tomorrow_0_5x);
draw_set_color(c_void);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (global.debug_toggle == true)
{
    draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline("FPS: " + string(fps) + "#FPS REAL:" + string(fps_real)));
    
    if (seldepth_main == 0)
    {
        indent = "##";
        option[0] = "[ROOMS]";
        option[1] = "[ENEMIES]";
        option[2] = "[SHOPS]";
        option[3] = "[ITEMS]";
        option[4] = "[EQUIP]";
        option[5] = "[STATS]";
        option[6] = "[RESET]";
        option_count = 6;
        draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + "SELECT OPTION:"));
        
        for (i = 0; i <= option_count; i++)
        {
            indent += "#";
            
            if (selnum_main == i)
                draw_set_color(c_select);
            else
                draw_set_color(c_void);
            
            draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + option[i]));
        }
    }
    else if (seldepth_main == 1)
    {
        if (selnum_main == 0)
        {
            indent = "##";
            option[0] = "[RUINS]: ";
            option[1] = "[DARK RUINS]: ";
            option[2] = "[LOWER SNOWDIN]: ";
            option[3] = "[DUNES]: ";
            option_count = 3;
            draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + "SELECT ROOM:"));
            
            for (i = 0; i <= option_count; i++)
            {
                indent += "#";
                
                if (selnumh_world == i)
                    draw_set_color(c_select);
                else
                    draw_set_color(c_void);
                
                draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + option[i] + room_get_name(world_room[i][selnuml_world[i]])));
            }
        }
        else if (selnum_main == 1)
        {
            indent = "##";
            option[0] = "[SPECIAL]:";
            option[1] = "[RUINS]: ";
            option[2] = "[DARK RUINS]: ";
            option[3] = "[LOWER SNOWDIN]: ";
            option[4] = "[DUNES]: ";
            option_count = 4;
            draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + "SELECT ENEMY:"));
            
            for (i = 0; i <= option_count; i++)
            {
                indent += "#";
                
                if (selnumh_enemy == i)
                    draw_set_color(c_select);
                else
                    draw_set_color(c_void);
                
                draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + option[i] + enemy[i][selnuml_enemy[i]]));
            }
        }
        else if (selnum_main == 2)
        {
            indent = "##";
            option[0] = "[LOWER SNOWDIN]: ";
            option_count = 0;
            draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + "SELECT SHOP:"));
            
            for (i = 0; i <= option_count; i++)
            {
                indent += "#";
                
                if (selnumh_shop == i)
                    draw_set_color(c_select);
                else
                    draw_set_color(c_void);
                
                draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + option[i] + shop[i][selnuml_shop[i]]));
            }
        }
        else if (selnum_main == 3)
        {
            indent = "##";
            option[0] = "[STORY]: ";
            option[1] = "[HEAL]: ";
            option[2] = "[PROTECT]: ";
            option[3] = "[SPEED]: ";
            option[4] = "[WEAPON]: ";
            option[5] = "[ARMOR]: ";
            option[6] = "[W. MOD]: ";
            option[7] = "[A. MOD]: ";
            option_count = 7;
            draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + "SELECT ITEM:"));
            
            for (i = 0; i <= option_count; i++)
            {
                indent += "#";
                
                if (selnumh_item == i)
                    draw_set_color(c_select);
                else
                    draw_set_color(c_void);
                
                draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + option[i] + item[i][selnuml_item[i]]));
            }
        }
        else if (selnum_main == 4)
        {
            indent = "##";
            option[0] = "[WEAPON]: ";
            option[1] = "[ARMOR]: ";
            option[2] = "[W. MOD]: ";
            option[3] = "[A. MOD]: ";
            option_count = 3;
            draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + "SELECT EQUIPMENT:"));
            
            for (i = 0; i <= option_count; i++)
            {
                indent += "#";
                
                if (selnumh_equip == i)
                    draw_set_color(c_select);
                else
                    draw_set_color(c_void);
                
                draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + option[i] + item[i + equip_disjoint][selnuml_equip[i]]));
            }
        }
        else if (selnum_main == 5)
        {
            indent = "##";
            option[0] = "[LEVEL]: ";
            option[1] = "[GOLD]: ";
            option[2] = "[HP]: ";
            option[3] = "[PP]: ";
            option[4] = "[SP]: ";
            option_count = 4;
            draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + "SELECT STAT:"));
            
            for (i = 0; i <= option_count; i++)
            {
                indent += "#";
                
                if (selnumh_stat == i)
                    draw_set_color(c_select);
                else
                    draw_set_color(c_void);
                
                draw_text(__view_get(e__VW.XView, 0) + dd_x, __view_get(e__VW.YView, 0) + dd_y, string_hash_to_newline(indent + option[i] + string(selnuml_stat[i])));
            }
        }
    }
}
