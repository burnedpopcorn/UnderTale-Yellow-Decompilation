function scr_debugmode()
{
    if (keyboard_check_pressed(vk_f5) && keyboard_check(vk_shift))
        scr_savegame();
    
    if (keyboard_check_pressed(vk_f6) && keyboard_check(vk_shift))
    {
        scr_loadgame();
        obj_pl.image_alpha = 1;
        
        if (global.party_member != -4)
            global.party_member.image_alpha = 1;
        
        scr_cutscene_end();
    }
    
    if (keyboard_check_pressed(vk_f2) && keyboard_check(vk_shift))
    {
        if (global.debugmove == false)
        {
            global.debugmove = true;
            exit;
        }
        else
        {
            global.debugmove = false;
        }
    }
    
    if (keyboard_check_pressed(ord("E")) && keyboard_check(vk_shift) && !instance_exists(obj_dev_console))
    {
        if (!instance_exists(obj_debugger))
            instance_create(0, 0, obj_debugger);
    }
    
    if (keyboard_check(vk_shift) && keyboard_check_pressed(vk_f1))
        url_open("https://docs.google.com/spreadsheets/d/1cRs7AnopU1EJ1mWnX3Qv-Xnf2vntGXbXcIyiLfnQHpo/edit?usp=sharing");
    
    if (!variable_global_exists("gold_tracked"))
        global.gold_tracked = global.player_gold;
    
    if (variable_global_exists("gold_amount_total"))
    {
        if (global.player_gold > global.gold_tracked)
            global.gold_amount_total += (global.player_gold - global.gold_tracked);
        else if (global.player_gold < global.gold_tracked)
            global.gold_spent += (global.gold_tracked - global.player_gold);
        
        global.gold_tracked = global.player_gold;
    }
    else
    {
        global.gold_amount_total = 0;
        global.gold_spent = 0;
    }
    
    if (variable_global_exists("hit_self"))
    {
        if (!variable_global_exists("hp_tracked"))
            global.hp_tracked = global.current_hp_self;
        
        if (variable_global_exists("hit_tracker"))
        {
            if (global.hp_tracked > global.current_hp_self)
                global.hit_tracker += 1;
            
            global.hp_tracked = global.current_hp_self;
        }
        else
        {
            global.hit_tracker = 0;
        }
    }
}
