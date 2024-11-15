function scr_mail_pin(argument0)
{
    var first_val, old_pos;
    
    first_val = ds_list_find_value(global.mail_list, 0);
    
    if (global.mail_pinned == false || argument0 != first_val)
    {
        global.mail_pinned = true;
        old_pos = ds_list_find_index(global.mail_list, argument0);
        ds_list_delete(global.mail_list, old_pos);
        ds_list_sort(global.mail_list, true);
        ds_list_insert(global.mail_list, 0, argument0);
        audio_play_sound(snd_mail_pin, 1, 0);
    }
    else
    {
        global.mail_pinned = false;
        ds_list_sort(global.mail_list, true);
        audio_play_sound(snd_mail_unpin, 1, 0);
    }
}
