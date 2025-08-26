if (live_call())
    return global.live_result;

with (other)
{
    draw_set_font(fnt_main);
    draw_set_halign(fa_left);
    
    if (room == rm_mainmenu)
    {
        if (p[1] == true)
            draw_set_color(c_yellow);
        
        draw_text(__view_get(e__VW.XView, 0) + 85, 120, string_hash_to_newline("Continue"));
        draw_set_color(c_white);
        
        if (p[2] == true)
            draw_set_color(c_yellow);
        
        draw_text(__view_get(e__VW.XView, 0) + 175, 120, string_hash_to_newline("Reset"));
        draw_set_color(c_white);
        
        if (p[3] == true)
            draw_set_color(c_yellow);
        
        draw_set_halign(fa_center);
        draw_text(__view_get(e__VW.XView, 0) + 160, 140, string_hash_to_newline("Config"));
        draw_set_color(c_white);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        ini_open("Save.sav");
        draw_text(__view_get(e__VW.XView, 0) + 65, 60, string_hash_to_newline("Clover"));
        draw_text(__view_get(e__VW.XView, 0) + 145, 60, string_hash_to_newline("LV" + string(ini_read_real("Save1", "LV", 1))));
        var play_time = ini_read_real("Playtime", "Seconds", 0);
        var string_minutes = string(play_time div 60);
        var string_seconds = string(play_time % 60);
        
        if (real(string_minutes) < 10)
            string_minutes = "0" + string_minutes;
        
        if (real(string_seconds) < 10)
            string_seconds = "0" + string_seconds;
        
        draw_text(__view_get(e__VW.XView, 0) + 210, 60, string_hash_to_newline(string_minutes + ":" + string_seconds));
        draw_text(__view_get(e__VW.XView, 0) + 65, 80, string_hash_to_newline(ini_read_string("Save1", "rmName", "Room Name")));
        ini_close();
    }
    else
    {
        draw_set_font(fnt_battle);
        draw_set_color(c_white);
        draw_set_halign(fa_center);
        
        if (p[1] == true)
            draw_set_color(c_yellow);
        
        draw_text(120, 140, string_hash_to_newline("RESET"));
        draw_set_color(c_white);
        
        if (p[2] == true)
            draw_set_color(c_yellow);
        
        draw_text(200, 140, string_hash_to_newline("WAIT"));
        draw_set_halign(fa_left);
        draw_set_color(c_white);
    }
}
