var item_number;

if (live_call())
    return global.live_result;

item_number = ds_list_size(global.fast_travel_list) - 1;

if (global.down_keyp)
{
    if (item_selected <= item_number)
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

point_selected = ds_list_find_value(global.fast_travel_list, item_selected - 1);

switch (point_selected)
{
    case "Snowdin - Forest":
        global.fast_travel_newroom = 56;
        global.fast_travel_newx = 200;
        global.fast_travel_newy = 100;
        break;
    
    case "Dunes - West Mines":
        global.fast_travel_newroom = 81;
        global.fast_travel_newx = 510;
        global.fast_travel_newy = 170;
        break;
    
    case "Dunes - Oasis Valley":
        global.fast_travel_newroom = 276;
        global.fast_travel_newx = 880;
        global.fast_travel_newy = 720;
        break;
    
    case "Wild East - Farm":
        global.fast_travel_newroom = 137;
        global.fast_travel_newx = 600;
        global.fast_travel_newy = 120;
        break;
    
    case "Steamw. - Commons":
        global.fast_travel_newroom = 175;
        global.fast_travel_newx = 520;
        global.fast_travel_newy = 120;
        break;
    
    case "Steamw. - C. Station":
        global.fast_travel_newroom = 202;
        global.fast_travel_newx = 400;
        global.fast_travel_newy = 290;
        break;
    
    case "Hotland - Crossroads":
        global.fast_travel_newroom = 211;
        global.fast_travel_newx = 170;
        global.fast_travel_newy = 120;
        break;
}

if (keyboard_multicheck_pressed(0))
{
    if (global.fast_travel_newroom == room)
    {
        audio_play_sound(snd_fail, 1, 0);
        exit;
    }
    
    global.fast_travel_point = point_selected;
    audio_play_sound(snd_confirm, 1, 0);
    instance_destroy();
}

if (keyboard_multicheck_pressed(1))
{
    global.fast_travel_point = "None";
    audio_play_sound(snd_fail, 1, 0);
    instance_destroy();
}
