function scr_dialogue_battle_action_selected_action_2_insomnitot_b()
{
    var action_2_selected_count_2;
    
    action_2_selected_count_2 = global.action_2_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You inform Insomnitot that it's#  time for bed.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 2 Low HP";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_sparing_2 == true)
    {
        message[0] = "* You list the health benefits of#  brushing your teeth.#* Insomnitot can't hear you.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 2 Sparing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* You inform Insomnitot of the#  dangers of sleep deprivation.#* It ignores you.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 0";
            global.last_action_selected_3 = "Nothing";
        }
        else if (random_number == 1)
        {
            message[0] = "* You inform Insomnitot of the#  benefits of a good night's sleep.#* It ignores you.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 0";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
