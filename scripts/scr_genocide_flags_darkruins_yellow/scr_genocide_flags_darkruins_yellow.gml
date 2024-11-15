function scr_genocide_flags_darkruins_yellow()
{
    global.dark_ruins_flag[3] = 1;
    global.dark_ruins_flag[7] = 1;
    global.dark_ruins_flag[8] = 1;
    global.dark_ruins_flag[12] = 1;
    global.dark_ruins_flag[13] = 1;
    global.dark_ruins_flag[14] = 1;
    global.dark_ruins_flag[17] = 2;
    global.dark_ruins_genocide_complete = 1;
    
    if (global.dark_ruins_boss_status[1] != 1)
        global.dark_ruins_boss_status[1] = 2;
    
    if (global.dark_ruins_boss_status[3] != 1)
        global.dark_ruins_boss_status[3] = 2;
}
