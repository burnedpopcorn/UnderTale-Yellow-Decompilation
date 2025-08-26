var item_number = 8;

for (var i = 1; i <= 8; i++)
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
    else if (item_number > 0)
        item_selected = item_number;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (keyboard_multicheck_pressed(vk_nokey))
{
    global.item_used_overworld = global.item_slot[item_selected];
    audio_play_sound(snd_confirm, 1, 0);
    instance_destroy();
}

if (keyboard_multicheck_pressed(vk_anykey))
{
    audio_play_sound(snd_fail, 1, 0);
    scr_cutscene_end();
    instance_destroy();
}
