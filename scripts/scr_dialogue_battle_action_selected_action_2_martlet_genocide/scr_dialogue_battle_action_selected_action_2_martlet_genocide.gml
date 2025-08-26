function scr_dialogue_battle_action_selected_action_2_martlet_genocide()
{
    var enemy_mode = global.enemy_mode;
    var action_2_selected_count = global.action_2_selected_count;
    
    if (enemy_mode == 3)
    {
        var random_number = irandom_range(1, 2);
        
        if (random_number == 1)
        {
            message[0] = "* You block out Martlet's rambling.#* She continues anyway.";
            global.last_action_selected = "Action 2 Fight Mode 1";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else
        {
            message[0] = "* You try not to hear Martlet out.";
            global.last_action_selected = "Action 2 Fight Mode 2";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
    else
    {
        message[0] = "* You ignore Martlet's pleas.";
        global.last_action_selected = "Action 2 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
