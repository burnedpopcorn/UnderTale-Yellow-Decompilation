function scr_mail_remove(arg0)
{
    var old_pos = ds_list_find_index(global.mail_list, arg0);
    ds_list_delete(global.mail_list, old_pos);
    scr_mail_sort();
}
