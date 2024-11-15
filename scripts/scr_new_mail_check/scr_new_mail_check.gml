function scr_new_mail_check()
{
    if (global.mail_flag[1] == false)
    {
        if (global.snowdin_flag[3] == 2 && global.snowdin_flag[13] != 0)
        {
            scr_mail_add_unclaimed("Slurpy Letter");
            global.mail_flag[1] = true;
        }
    }
    
    if (global.mail_flag[2] == false)
    {
        if (global.dunes_flag[0] >= 1)
        {
            scr_mail_add_unclaimed("Mo Letter");
            global.mail_flag[2] = true;
        }
    }
    
    if (global.flag[17] == 1 && global.dunes_flag[24] != 0)
    {
        if (global.mail_flag[3] == 0 && global.route == 2)
        {
            scr_mail_add_unclaimed("Dalv Letter");
            global.mail_flag[3] = true;
        }
    }
    
    if (global.dunes_flag[16] != 0)
    {
        if (global.mail_flag[4] == 0)
        {
            scr_mail_add_unclaimed("Shufflers Letter");
            global.mail_flag[4] = true;
        }
    }
    
    if (global.dunes_flag[24] == 1 && global.sworks_flag[15] >= 1 && global.route == 1 && global.sworks_flag[61] == 0)
    {
        if (global.mail_flag[5] == 0)
        {
            scr_mail_add_unclaimed("Starlo Update");
            global.mail_flag[5] = true;
        }
    }
    
    if (global.dunes_flag[24] == 1 && global.sworks_flag[15] >= 1 && global.route == 2)
    {
        if (global.mail_flag[6] == 0)
        {
            scr_mail_add_unclaimed("Starlo (Urgent)");
            global.mail_flag[6] = true;
        }
    }
    
    if (global.snowdin_flag[3] == 2 && global.hotland_flag[6] > 0)
    {
        if (global.mail_flag[7] == 0)
        {
            scr_mail_add_unclaimed("Slurpy Letter 2");
            global.mail_flag[7] = true;
        }
    }
    
    if (global.hotland_flag[6] > 0 && global.route == 1 && global.sworks_flag[61] == 0 && global.dunes_flag[24] == 1)
    {
        if (global.mail_flag[8] == 0)
        {
            scr_mail_add_unclaimed("Ceroba (Important)");
            global.mail_flag[8] = true;
        }
    }
    
    if (global.hotland_flag[6] > 0 && global.sworks_flag[31] == 2)
    {
        if (global.mail_flag[9] == 0)
        {
            scr_mail_add_unclaimed("MAIL???");
            global.mail_flag[9] = true;
        }
    }
}
