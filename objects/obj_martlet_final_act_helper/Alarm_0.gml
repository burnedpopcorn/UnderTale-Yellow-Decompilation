switch (global.last_action_selected)
{
    case "Action 2 Message 0":
        var heal_amount;
        
        with (obj_dialogue_battle_action_selected_action_2)
        {
            message = 0;
            heal_amount = choose(20, 20, 20, 20, 21, 21, 21, 22, 22, 22, 23, 23, 24, 24, 25);
            message[0] = "* Gained " + string(heal_amount) + "HP!";
            message_length = string_length(message[message_current]);
        }
        
        if (global.current_hp_self < global.max_hp_self)
            global.current_hp_self = clamp(global.current_hp_self + heal_amount, 0, global.max_hp_self);
        
        break;
}

audio_play_sound(snd_battle_item_eat, 1, 0);
can_skip = true;
