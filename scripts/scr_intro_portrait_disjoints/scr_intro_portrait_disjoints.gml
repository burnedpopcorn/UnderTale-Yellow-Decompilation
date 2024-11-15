function scr_intro_portrait_disjoints()
{
    var game_mode;
    
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        global.portrait_disjoint_x_dalv = 36;
        global.portrait_disjoint_y_dalv = 57;
        global.portrait_disjoint_x_starlo = 36;
        global.portrait_disjoint_y_starlo = 68;
        global.portrait_b_disjoint_x_starlo = 72;
        global.portrait_b_disjoint_y_starlo = 132;
    }
    
    global.portrait_disjoint_x_toriel = 35;
    global.portrait_disjoint_y_toriel = 32;
    global.portrait_disjoint_x_flowey = 37;
    global.portrait_disjoint_y_flowey = 37;
}
