function scr_dialogue_battle_action_selected_action_1_sweet_corn_b()
{
    var action_1_selected_count_2;
    
    action_1_selected_count_2 = global.action_1_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You walk up and lick Sweet Corn.#* She is creeped out.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 1 Low HP";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* All you can taste is sugar.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 1 Message 0";
            global.last_action_selected_3 = "Nothing";
        }
        else if (random_number == 1)
        {
            message[0] = "* All you can taste is sugar.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 1 Message 0";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
