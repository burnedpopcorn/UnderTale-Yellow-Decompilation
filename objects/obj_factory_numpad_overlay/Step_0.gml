if (live_call())
    return global.live_result;

if (entry_correct != -1)
{
    if (layer_sequence_is_paused(overlay_sequence))
        layer_sequence_play(overlay_sequence);
    
    if (layer_sequence_is_finished(overlay_sequence))
    {
        layer_sequence_destroy(overlay_sequence);
        instance_destroy();
    }
    
    exit;
}

if (global.left_keyp)
{
    if ((number_selected > 1 && number_selected < 4) || (number_selected > 4 && number_selected < 7) || (number_selected > 7 && number_selected < 11))
        number_selected -= 1;
    else
        number_selected += 2;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (global.right_keyp)
{
    if ((number_selected < 3 && number_selected > 0) || (number_selected < 6 && number_selected > 3) || (number_selected < 9 && number_selected > 6))
        number_selected += 1;
    else
        number_selected -= 2;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (global.down_keyp)
{
    if (number_selected < 10)
        number_selected = clamp(number_selected + 3, 1, 10);
    else
        number_selected = 2;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (global.up_keyp)
{
    if (number_selected > 3)
        number_selected = clamp(number_selected - 3, 1, 10);
    else
        number_selected = 10;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

var confirm = false;

if (instance_exists(obj_factory_03_numpad_number))
{
    with (obj_factory_03_numpad_number)
    {
        var current_number = image_index + 1;
        
        if (current_number == other.number_selected)
        {
            active = true;
            
            if (keyboard_multicheck_pressed(vk_nokey))
            {
                if (other.number_selected != 10)
                {
                    if (!button_pressed && string_length(other.entry_number) < 4)
                    {
                        audio_play_sound(snd_beep, 1, 0);
                        alarm[0] = 10;
                        other.entry_number += string(other.number_selected);
                        button_pressed = true;
                    }
                }
                else
                {
                    confirm = true;
                }
            }
        }
        else
        {
            active = false;
        }
    }
}

if (confirm == true)
{
    if (entry_number == target_code)
    {
        entry_correct = 1;
        audio_play_sound(snd_success, 1, 0);
    }
    else
    {
        entry_correct = 0;
        audio_play_sound(snd_fail, 1, 0);
    }
}
