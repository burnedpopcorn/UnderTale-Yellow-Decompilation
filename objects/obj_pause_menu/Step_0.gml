var item_number, i, current_item, mail_number, current_mail;

if (live_call())
    return global.live_result;

if (!inventory_open && !stats_open && !mail_open && !item_drop)
{
    if (global.down_keyp)
    {
        if (selection < selection_max)
            selection += 1;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (global.up_keyp)
    {
        if (selection > 1)
            selection -= 1;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (keyboard_multicheck_pressed(1) || keyboard_multicheck_pressed(2))
        instance_destroy();
    
    if (keyboard_multicheck_pressed(0))
    {
        switch (choice[selection])
        {
            case "ITEM":
                if (global.item_slot[1] != "Nothing")
                    inventory_open = true;
                else
                    audio_play_sound(snd_fail, 1, 0);
                
                break;
            
            case "STATS":
                stats_open = true;
                break;
            
            case "MAIL":
                if (!ds_list_empty(global.mail_list))
                    mail_open = true;
                else
                    audio_play_sound(snd_fail, 1, 0);
                
                break;
            
            case "BAG":
                instance_create(0, 0, obj_dimensional_box_screen_overworld);
                instance_create(obj_dimensional_box_screen_overworld.x + 20, obj_dimensional_box_screen_overworld.y + 37, obj_heart_dimensional_box_overworld);
                obj_dimensional_box_screen_overworld.image_index = 1;
                instance_destroy();
                scr_cutscene_start();
                break;
            
            case "TALK":
                with (global.party_member)
                    event_user(0);
                
                instance_destroy(id, false);
                break;
        }
        
        audio_play_sound(snd_confirm, 1, 0);
    }
}
else if (stats_open)
{
    if (keyboard_multicheck_pressed(1))
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        stats_open = false;
    }
}
else if (inventory_open && !item_inspect)
{
    item_number = 8;
    
    for (i = 1; i <= 8; i++)
    {
        if (global.item_slot[i] == "Nothing")
        {
            item_number = i - 1;
            break;
        }
    }
    
    if (global.down_keyp)
    {
        if (item_selected < item_number)
            item_selected += 1;
        else
            item_selected = 1;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (global.up_keyp)
    {
        if (item_selected > 1)
            item_selected -= 1;
        else
            item_selected = item_number;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (keyboard_multicheck_pressed(0))
    {
        item_inspect = true;
        selection = 1;
        audio_play_sound(snd_confirm, 1, 0);
    }
    else if (keyboard_multicheck_pressed(1))
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        inventory_open = false;
    }
}
else if (item_inspect == true)
{
    if (global.right_keyp)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (selection < 3)
            selection += 1;
        else
            selection = 1;
    }
    
    if (global.left_keyp)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (selection > 1)
            selection -= 1;
        else
            selection = 3;
    }
    
    current_item = global.item_slot[item_selected];
    
    if (keyboard_multicheck_pressed(0))
    {
        switch (selection)
        {
            case 1:
                scr_item_use(current_item, item_selected);
                instance_destroy(id, false);
                break;
            
            case 2:
                scr_item_info(current_item);
                instance_destroy(id, false);
                break;
            
            case 3:
                instance_create(0, 0, obj_dialogue_drop);
                obj_dialogue_drop.current_item = current_item;
                instance_destroy(id, false);
                break;
        }
    }
    
    if (keyboard_multicheck_pressed(1))
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        item_inspect = false;
    }
}
else if (mail_open)
{
    if (!mail_inspect)
    {
        mail_number = ds_list_size(global.mail_list) - 1;
        
        if (global.down_keyp)
        {
            if (mail_selected < (mail_display_count - 1) && mail_selected < mail_number)
                mail_selected += 1;
            else if (mail_selected == (mail_display_count - 1) && (mail_selected + mail_offset) < mail_number)
                mail_offset += 1;
            
            audio_play_sound(snd_mainmenu_select, 1, 0);
        }
        
        if (global.up_keyp)
        {
            if (mail_selected > 0)
                mail_selected -= 1;
            else if (mail_offset > 0)
                mail_offset -= 1;
            
            audio_play_sound(snd_mainmenu_select, 1, 0);
        }
        
        if (keyboard_multicheck_pressed(0))
        {
            mail_inspect = true;
            selection = 1;
            audio_play_sound(snd_confirm, 1, 0);
        }
        
        if (keyboard_multicheck_pressed(1))
        {
            audio_play_sound(snd_mainmenu_select, 1, 0);
            mail_open = false;
        }
    }
    else if (mail_inspect)
    {
        if (mail_check == true)
        {
            if (!instance_exists(obj_mail))
                mail_check = false;
            
            exit;
        }
        
        if (global.right_keyp)
        {
            audio_play_sound(snd_mainmenu_select, 1, 0);
            
            if (selection < 3)
                selection += 1;
            else
                selection = 1;
        }
        
        if (global.left_keyp)
        {
            audio_play_sound(snd_mainmenu_select, 1, 0);
            
            if (selection > 1)
                selection -= 1;
            else
                selection = 3;
        }
        
        current_mail = ds_list_find_value(global.mail_list, mail_selected + mail_offset);
        
        if (keyboard_multicheck_pressed(1))
        {
            audio_play_sound(snd_mainmenu_select, 1, 0);
            mail_inspect = false;
        }
        
        if (keyboard_multicheck_pressed(0))
        {
            switch (selection)
            {
                case 1:
                    scr_mail_check(current_mail);
                    mail_check = true;
                    break;
                
                case 2:
                    scr_mail_pin(current_mail);
                    mail_inspect = false;
                    break;
                
                case 3:
                    instance_create(0, 0, obj_mail_drop);
                    obj_mail_drop.current_mail = current_mail;
                    instance_destroy();
                    break;
            }
            
            audio_play_sound(snd_confirm, 1, 0);
        }
    }
}

if (global.cutscene || global.dialogue_open || instance_exists(obj_transition))
    instance_destroy(id, false);
