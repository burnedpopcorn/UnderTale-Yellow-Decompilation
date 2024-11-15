function scr_route_check_darkruins_yellow()
{
    if (global.route != 0)
    {
        if (global.route == 2)
        {
            if (global.dark_ruins_genocide_counter_total > 0 || global.dark_ruins_boss_status[1] == 2 || global.dark_ruins_boss_status[2] == 2 || global.dark_ruins_boss_status[3] == 2)
                global.route = 1;
        }
        else if (global.route == 3)
        {
            if (global.dark_ruins_boss_status[1] == 1 || global.dark_ruins_boss_status[2] == 1 || global.dark_ruins_boss_status[3] == 1)
                global.route = 1;
        }
    }
}
