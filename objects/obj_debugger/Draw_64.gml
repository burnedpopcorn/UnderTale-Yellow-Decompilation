if (live_call())
    return global.live_result;

if (show_timer)
{
    var string_hours = string(global.elapsed_seconds div 3600);
    var string_minutes = string((global.elapsed_seconds div 60) % 60);
    var string_seconds = string(global.elapsed_seconds % 60);
    
    if (real(string_hours) < 10)
        string_hours = "0" + string_hours;
    
    if (real(string_minutes) < 10)
        string_minutes = "0" + string_minutes;
    
    if (real(string_seconds) < 10)
        string_seconds = "0" + string_seconds;
    
    var playtime = string_hash_to_newline(string_hours + ":" + string_minutes + ":" + string_seconds);
    draw_set_color(c_white);
    draw_text(280, 10, playtime);
    exit;
}

if (is_recording == true)
    exit;

display_set_gui_size(640, 480);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(fnt_stats);
var xx = 8;
var yy = 8;
draw_set_color(c_white);
draw_text(xx + 180, yy, string_hash_to_newline("WASD - Nagivate#Q - Back#E - Confirm"));

if (floor(fps) < 30)
    draw_set_color(c_red);

draw_text(xx + 180, yy, string_hash_to_newline("###FPS: " + string(fps)));
draw_text(xx + 180, yy, string_hash_to_newline("####ROOM: " + string(room_get_name(room))));
draw_set_color(c_white);

if (dbg_menu == 0)
{
    for (var i = 1; i <= 5; i++)
    {
        draw_set_color(c_white);
        
        if (dbg_pos == i)
            draw_set_color(c_yellow);
        
        switch (i)
        {
            case 1:
                draw_text(xx, yy, string_hash_to_newline("[ROOMS]"));
                break;
            
            case 2:
                draw_text(xx, yy * 2, string_hash_to_newline("[BATTLES]"));
                break;
            
            case 3:
                draw_text(xx, yy * 3, string_hash_to_newline("[CHEATS]"));
                break;
            
            case 4:
                draw_text(xx, yy * 4, string_hash_to_newline("[RESTART GAME]"));
                break;
            
            case 5:
                draw_text(xx, yy * 5, string_hash_to_newline("[EXECUTE GML]"));
                break;
        }
    }
}

if (dbg_menu == 1)
{
    for (var i = 0; i <= dbg_room_count; i++)
    {
        yy = -dbg_pos * 8;
        draw_set_color(c_white);
        
        if (dbg_pos == i)
            draw_set_color(c_yellow);
        
        draw_text(xx, yy + ((i + 1) * 8), string_hash_to_newline(ds_list_find_value(room_list, i)));
    }
}

if (dbg_menu == 2)
{
    for (var i = 1; i <= 4; i++)
    {
        draw_set_color(c_white);
        
        if (dbg_pos == i)
            draw_set_color(c_yellow);
        
        switch (i)
        {
            case 1:
                draw_text(xx, yy, string_hash_to_newline("LVL UP"));
                break;
            
            case 2:
                draw_text(xx, yy * 2, string_hash_to_newline("LVL RESET"));
                break;
            
            case 3:
                draw_text(xx, yy * 3, string_hash_to_newline("CHOOSE BATTLE"));
                break;
            
            case 4:
                draw_text(xx, yy * 4, string_hash_to_newline("BOSS BATTLE"));
                break;
        }
        
        draw_set_color(c_white);
        draw_text(xx + 100, yy * 3, string_hash_to_newline(dbg_battle_enemy_name[dbg_enemy_current]));
        draw_text(xx + 100, yy * 4, string_hash_to_newline(dbg_battle_boss_name[dbg_boss_current]));
    }
}

if (dbg_menu == 3)
{
    for (var i = 0; i < ds_map_size(cheat_map); i++)
    {
        var current_value = ds_map_find_value(cheat_map, i);
        draw_set_color(c_white);
        
        if (dbg_pos == i)
            draw_set_color(c_yellow);
        
        var rt = "neutral";
        
        switch (i)
        {
            case 0:
                draw_text(xx, yy, string_hash_to_newline("GAME SPEED: " + string(current_value)));
                break;
            
            case 1:
                draw_text(xx, yy * 2, string_hash_to_newline("9999 HP: " + string(current_value)));
                break;
            
            case 2:
                draw_text(xx, yy * 3, string_hash_to_newline("NO COL: " + string(current_value)));
                break;
            
            case 3:
                draw_text(xx, yy * 4, string_hash_to_newline("GET G: " + string(current_value)));
                break;
            
            case 4:
                draw_text(xx, yy * 5, string_hash_to_newline("EASY ITEMS"));
                break;
            
            case 5:
                switch (current_value)
                {
                    case 1:
                        rt = "neutral";
                        break;
                    
                    case 2:
                        rt = "pacifist";
                        break;
                    
                    case 3:
                        rt = "M U R D E R";
                        break;
                }
                
                draw_text(xx, yy * 6, string_hash_to_newline("ROUTE SELECT: " + rt));
            
            case 6:
                draw_text(xx, yy * 7, string_hash_to_newline("KANAKO TIME"));
                break;
            
            case 7:
                draw_text(xx, yy * 8, string_hash_to_newline("SUPER DEBUG"));
                break;
                break;
        }
    }
}

display_set_gui_size(320, 240);
