function scr_dialogue_battle_action_selected_action_1_flier_c()
{
    var action_1_selected_count_3 = global.action_1_selected_count_3;
    
    if (global.enemy_low_hp_3 == true)
    {
        message[0] = "* You inform Flier that you#  understand his struggle.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 1 Low HP";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* You inform Flier that his life#  isn't half over, he has a whole#  half left to go!";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Action 1 Message 0";
        }
        else if (random_number == 1)
        {
            message[0] = "* You inform Flier that his life#  isn't half over, he has a whole#  half left to go!";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Action 1 Message 0";
        }
    }
}
