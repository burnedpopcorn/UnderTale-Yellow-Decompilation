var MSG_ADVANCE = false;
var message_length = string_length(message[message_current]);

if (fade_out == true)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.1;
    else
        instance_destroy();
    
    exit;
}
else if (draw_alpha < 1)
{
    draw_alpha += 0.1;
}

if (message_reset == true)
{
    message_reset = false;
    message = 0;
    event_perform(ev_create, 0);
    exit;
}

if (keyboard_multicheck_pressed(vk_anykey) && skippable == true)
    cutoff = message_length;

if (cutoff < message_length)
{
    if (counter == 0)
    {
        cutoff += 1;
        script_execute(scr_text_talk);
    }
}
else if (keyboard_multicheck_pressed(vk_nokey) && skippable == true)
{
    if (choice == false)
        MSG_ADVANCE = true;
}

script_execute(scr_text_counter_overworld);

if (outcome == p && choice == false)
{
    if ((message_current + 1) < array_length_1d(message))
    {
        message_current += 1;
        cutoff = 0;
    }
    else
    {
        global.dialogue_open = false;
    }
    
    outcome = 0;
}

if (message_current == ch_msg)
    choice = true;

if (choice == true && cutoff >= string_length(message[message_current]))
{
    if (global.down_keyp)
    {
        if (p < 5 && ch[p + 1] != "")
            p += 1;
        else
            p = 1;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (global.up_keyp)
    {
        if (p > 1 && ch[p - 1] != "")
            p -= 1;
        else
            p = 5;
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (keyboard_multicheck_pressed(vk_nokey))
    {
        outcome = p;
        choice = false;
        audio_play_sound(snd_confirm, 1, 0);
    }
}

if (MSG_ADVANCE)
{
    if ((message_current + 1) < array_length_1d(message))
    {
        message_current += 1;
        cutoff = 0;
    }
    else
    {
        global.dialogue_open = false;
    }
}
