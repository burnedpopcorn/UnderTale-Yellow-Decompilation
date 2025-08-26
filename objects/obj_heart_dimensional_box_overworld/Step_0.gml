if (live_call())
    return global.live_result;

var dimensional_box_number_row = global.dimensional_box_number_row;
var dimensional_box_number_column = global.dimensional_box_number_column;

if (keyboard_multicheck_pressed(vk_nokey))
{
    audio_play_sound(snd_confirm, 0, 0);
    
    if (dimensional_box_number_column == 1)
    {
        if (global.item_slot[dimensional_box_number_row] != "Nothing")
        {
            ds_list_insert(global.box_slot_list, 0, global.item_slot[dimensional_box_number_row]);
            scr_item_remove(global.item_slot[dimensional_box_number_row]);
        }
        else
        {
            audio_stop_sound(snd_confirm);
            audio_play_sound(snd_fail, 1, 0);
        }
    }
    else if (dimensional_box_number_column == 2)
    {
        var retrieved_item = ds_list_find_value(global.box_slot_list, (dimensional_box_number_row - 1) + global.dimensional_box_offset);
        
        if (retrieved_item != undefined && scr_item(retrieved_item))
        {
            ds_list_delete(global.box_slot_list, (dimensional_box_number_row - 1) + global.dimensional_box_offset);
        }
        else
        {
            audio_stop_sound(snd_confirm);
            audio_play_sound(snd_fail, 1, 0);
        }
    }
}
else if (keyboard_multicheck_pressed(vk_anykey))
{
    audio_play_sound(snd_fail, 1, 0);
    
    with (obj_dimensional_box_screen_overworld)
        instance_destroy();
    
    scr_cutscene_end();
    instance_destroy();
    exit;
}

if (!keyboard_multicheck_pressed(vk_nokey))
{
    if (global.right_keyp && global.left_keyp == 0)
    {
        if (dimensional_box_number_column < 2)
            global.dimensional_box_number_column += 1;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (global.left_keyp && global.right_keyp == 0)
    {
        if (dimensional_box_number_column > 1)
        {
            if (dimensional_box_number_row > 8)
                global.dimensional_box_number_row = 8;
            
            global.dimensional_box_number_column -= 1;
        }
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
}

var max_row_number;

if (dimensional_box_number_column == 1)
    max_row_number = 8;
else if (dimensional_box_number_column == 2)
    max_row_number = 10;

if (!keyboard_multicheck_pressed(vk_nokey))
{
    if (global.down_keyp && global.up_keyp == 0)
    {
        if (dimensional_box_number_row == max_row_number && dimensional_box_number_column == 2)
        {
            if ((dimensional_box_number_row + global.dimensional_box_offset) <= ds_list_size(global.box_slot_list))
                global.dimensional_box_offset += 1;
        }
        else if (dimensional_box_number_row < max_row_number)
        {
            global.dimensional_box_number_row += 1;
        }
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (global.up_keyp && global.down_keyp == 0)
    {
        if (dimensional_box_number_row == 1 && dimensional_box_number_column == 2)
        {
            if (global.dimensional_box_offset > 0)
                global.dimensional_box_offset -= 1;
        }
        
        if (dimensional_box_number_row > 1)
            global.dimensional_box_number_row -= 1;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
}

dimensional_box_number_row = global.dimensional_box_number_row;
dimensional_box_number_column = global.dimensional_box_number_column;
var x_offset = 8;
var y_offset = 8;

if (dimensional_box_number_column == 1)
{
    if (dimensional_box_number_row == 1)
    {
        xx = x_offset + 20;
        yy = y_offset + 37;
    }
    else if (dimensional_box_number_row == 2)
    {
        xx = x_offset + 20;
        yy = y_offset + 53;
    }
    else if (dimensional_box_number_row == 3)
    {
        xx = x_offset + 20;
        yy = y_offset + 69;
    }
    else if (dimensional_box_number_row == 4)
    {
        xx = x_offset + 20;
        yy = y_offset + 85;
    }
    else if (dimensional_box_number_row == 5)
    {
        xx = x_offset + 20;
        yy = y_offset + 101;
    }
    else if (dimensional_box_number_row == 6)
    {
        xx = x_offset + 20;
        yy = y_offset + 117;
    }
    else if (dimensional_box_number_row == 7)
    {
        xx = x_offset + 20;
        yy = y_offset + 133;
    }
    else if (dimensional_box_number_row == 8)
    {
        xx = x_offset + 20;
        yy = y_offset + 149;
    }
}
else if (dimensional_box_number_column == 2)
{
    if (dimensional_box_number_row == 1)
    {
        xx = x_offset + 168;
        yy = y_offset + 37;
    }
    else if (dimensional_box_number_row == 2)
    {
        xx = x_offset + 168;
        yy = y_offset + 53;
    }
    else if (dimensional_box_number_row == 3)
    {
        xx = x_offset + 168;
        yy = y_offset + 69;
    }
    else if (dimensional_box_number_row == 4)
    {
        xx = x_offset + 168;
        yy = y_offset + 85;
    }
    else if (dimensional_box_number_row == 5)
    {
        xx = x_offset + 168;
        yy = y_offset + 101;
    }
    else if (dimensional_box_number_row == 6)
    {
        xx = x_offset + 168;
        yy = y_offset + 117;
    }
    else if (dimensional_box_number_row == 7)
    {
        xx = x_offset + 168;
        yy = y_offset + 133;
    }
    else if (dimensional_box_number_row == 8)
    {
        xx = x_offset + 168;
        yy = y_offset + 149;
    }
    else if (dimensional_box_number_row == 9)
    {
        xx = x_offset + 168;
        yy = y_offset + 165;
    }
    else if (dimensional_box_number_row == 10)
    {
        xx = x_offset + 168;
        yy = y_offset + 181;
    }
}
