function scr_mail_add(arg0)
{
    ds_list_add(global.mail_list, arg0);
    
    if (irandom(global.spam_mail_chance) == 1)
    {
        show_debug_message("success");
        ds_list_add(global.mail_list, choose("Spam Letter 1", "Spam Letter 2", "Spam Letter 3", "Spam Letter 4", "Spam Letter 5", "Spam Letter 6", "Spam Letter 7", "Spam Letter 8", "Spam Letter 9"));
        global.spam_mail_chance = 30;
    }
    else
    {
        global.spam_mail_chance = clamp(global.spam_mail_chance - 1, 1, 999);
    }
    
    scr_mail_sort();
}
