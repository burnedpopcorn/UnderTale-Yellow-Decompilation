if (global.dialogue_open == false)
{
    if (instance_exists(obj_pl))
        obj_pl.alarm[0] = 1;
    
    if (draw_alpha > 0)
        draw_alpha -= 0.2;
    else
        instance_destroy();
    
    exit;
}

var MSG_ADVANCE = false;
var message_length = string_length(message[message_current]);

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
        message_length = string_length(message[message_current]);
        
        if (cutoff < message_length && (cutoff % 1) == 0)
        {
            switch (string_char_at(message[message_current], cutoff))
            {
                case " ":
                case ".":
                    break;
                
                default:
                    audio_play_sound(sndfnt, 1, false);
                    break;
            }
        }
    }
}
else if (keyboard_multicheck_pressed(vk_nokey) && skippable == true)
{
    if (choice == false)
        MSG_ADVANCE = true;
}

if (message_timer > -1 && cutoff == message_length)
{
    if (mT == -1)
        mT = message_timer;
    
    if (mT > 0)
    {
        mT -= 1;
    }
    else if (mT == 0)
    {
        mT = -1;
        MSG_ADVANCE = true;
    }
}

scr_text_counter_custom(0.2);
script_execute(scr_text_choices);

if (MSG_ADVANCE || force_skip)
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
    
    force_skip = false;
}
