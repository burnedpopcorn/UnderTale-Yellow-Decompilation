function scr_mail_pin(arg0)
{
    var first_val = ds_list_find_value(global.mail_list, 0);
    
    if (global.mail_pinned == false || arg0 != first_val)
    {
        global.mail_pinned = true;
        var old_pos = ds_list_find_index(global.mail_list, arg0);
        ds_list_delete(global.mail_list, old_pos);
        ds_list_sort(global.mail_list, true);
        ds_list_insert(global.mail_list, 0, arg0);
        audio_play_sound(snd_mail_pin, 1, 0);
    }
    else
    {
        global.mail_pinned = false;
        ds_list_sort(global.mail_list, true);
        audio_play_sound(snd_mail_unpin, 1, 0);
    }
}
