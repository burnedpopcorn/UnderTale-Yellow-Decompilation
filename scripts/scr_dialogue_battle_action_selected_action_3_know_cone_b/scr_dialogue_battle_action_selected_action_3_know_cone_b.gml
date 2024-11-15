function scr_dialogue_battle_action_selected_action_3_know_cone_b()
{
    var action_2_selected_count_2, action_3_selected_count_2;
    
    action_2_selected_count_2 = global.action_2_selected_count_2;
    action_3_selected_count_2 = global.action_3_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You berate Know Cone's#  ignorance and terrible grammar.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 3 Low HP";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_2_selected_count_2 >= 1)
    {
        message[0] = "* You berate Know Cone's#  ignorance and terrible grammar.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 3 Message 1";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You berate Know Cone's#  ignorance and terrible grammar.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 3 Message 0";
        global.last_action_selected_3 = "Nothing";
    }
}
