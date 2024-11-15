script_execute(scr_controls_text);

if (key_revert_pressed)
{
    characters = message_length;
    message_draw = string_copy(message[message_current], 0, characters);
}

if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(scr_text_increase);
        script_execute(scr_talking_enemy);
    }
    else
    {
        can_talk = false;
    }
}
else
{
    can_talk = false;
    
    if (key_select_pressed)
    {
        if (message_current < message_end)
        {
            message_current += 1;
            message_length = string_length(message[message_current]);
            characters = 0;
            message_draw = "";
        }
        else
        {
            with (obj_heart_battle_fighting_parent)
                moveable = true;
            
            with (obj_sme_yellow_rhythm_generator)
            {
                instance_create(obj_el_bailador_neutral.x, obj_el_bailador_neutral.y, obj_battle_enemy_attack_el_bailador_dance);
                audio_restore = 0;
                scr_sme_yellow_rhythm_song_data_danza(511, other.finale_chart[0], other.finale_chart[1], 1.2, [521, 518, 515]);
                note_sarray[array_length(note_sarray) - 1] = 523;
                
                with (obj_background_el_bailador_test_yellow)
                {
                    m_sign_modifier = 1;
                    m_time_elapsed = -1;
                    time_max = floor(time_max_default * 0.5);
                    m_sign_modifier_v = 1;
                    m_time_elapsed_v = -1;
                    time_max_v = floor(time_max_default * 0.5);
                    max_rise_v = max_rise_v_default - 1;
                    interlaced_x = false;
                    interlaced_y = true;
                    osc_horizontal = true;
                    osc_vertical = true;
                }
                
                with (obj_battle_enemy_attack_el_bailador_dance)
                {
                    sign_modifier = 1;
                    time_elapsed = 0;
                    time_max = floor(time_max_default * 0.5);
                }
            }
            
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
