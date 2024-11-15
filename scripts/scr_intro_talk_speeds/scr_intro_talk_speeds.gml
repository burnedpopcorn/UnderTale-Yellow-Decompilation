function scr_intro_talk_speeds()
{
    var game_mode;
    
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        global.talk_speed_author = 0.2;
    }
    else if (game_mode == "yellow")
    {
        global.talk_speed_rorrim = 0.3;
        global.talk_speed_dalv = 0.2;
        global.talk_speed_frostermit = 0.3;
        global.talk_speed_shufflers_rephil = 0.2;
        global.talk_speed_martlet = 0.2;
        global.talk_speed_el_bailador = 0.2;
        global.talk_speed_starlo = 0.2;
        global.talk_speed_author = 0.2;
        global.talk_speed_honeydew_bear = 0.2;
    }
    
    global.talk_speed_default = 0.2;
    global.talk_speed_toriel = 0.2;
    global.talk_speed_toriel_idle = 0.2;
    global.talk_speed_flowey = 0.2;
}
