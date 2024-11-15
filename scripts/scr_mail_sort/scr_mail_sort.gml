function scr_mail_sort()
{
    var old_pinned;
    
    old_pinned = "";
    
    if (global.mail_pinned == true)
    {
        old_pinned = ds_list_find_value(global.mail_list, 0);
        ds_list_delete(global.mail_list, 0);
    }
    
    ds_list_sort(global.mail_list, false);
    
    if (old_pinned != "")
        ds_list_insert(global.mail_list, 0, old_pinned);
}
