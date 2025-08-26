switch (global.last_action_selected)
{
    case "Action 1 Message 0":
        with (obj_dialogue_battle_action_selected_action_1)
        {
            message[0] = "* You hold onto your hopes...#* Defense temporarily increased!";
            message_length = string_length(message[message_current]);
        }
        
        global.current_pp_self = 1;
        break;
    
    case "Action 2 Message 0":
        var heal_amount;
        
        with (obj_dialogue_battle_action_selected_action_2)
        {
            heal_amount = choose(5, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 9, 9, 10);
            message[0] = "* You refuse to back down...#* Gained " + string(heal_amount) + "HP!";
            message_length = string_length(message[message_current]);
        }
        
        if (global.current_hp_self < global.max_hp_self)
            global.current_hp_self = clamp(global.current_hp_self + heal_amount, 0, global.max_hp_self);
        
        break;
    
    case "Action 3 Message 0":
        with (obj_dialogue_battle_action_selected_action_3)
        {
            message[0] = "* You think of those you love#  most...#* Speed temporarily increased!";
            message_length = string_length(message[message_current]);
        }
        
        global.current_sp_self = 1;
        break;
}

audio_play_sound(snd_battle_item_eat, 1, 0);
can_skip = true;
