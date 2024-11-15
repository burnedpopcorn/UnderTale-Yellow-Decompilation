function scr_route_determination_darkruins_yellow()
{
    if (global.dark_ruins_genocide_counter_total == 0 && global.dark_ruins_boss_status[1] != 2 && global.dark_ruins_boss_status[3] != 2)
        global.route = 2;
    else if (global.dark_ruins_genocide_complete == 1 && global.dark_ruins_boss_status[1] != 1 && global.dark_ruins_boss_status[3] != 1)
        global.route = 3;
    else
        global.route = 1;
    
    if (global.dark_ruins_genocide_complete == 1 && global.dark_ruins_boss_status[1] == 1 && global.dark_ruins_boss_status[3] != 1)
        global.flag[22] = 1;
}
