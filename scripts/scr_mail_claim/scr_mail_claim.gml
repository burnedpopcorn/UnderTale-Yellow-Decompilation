function scr_mail_claim()
{
    var old_list, i;
    
    old_list = global.mail_unclaimed_list;
    
    for (i = 0; i < ds_list_size(old_list); i++)
    {
        scr_mail_add(ds_list_find_value(old_list, i));
        global.mail_count += 1;
    }
    
    ds_list_clear(global.mail_unclaimed_list);
}
