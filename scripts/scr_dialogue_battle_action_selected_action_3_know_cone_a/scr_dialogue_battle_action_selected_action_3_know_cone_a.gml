function scr_dialogue_battle_action_selected_action_3_know_cone_a()
{
    var action_2_selected_count = global.action_2_selected_count;
    var action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You berate Know Cone's#  ignorance and terrible grammar.";
        global.last_action_selected = "Action 3 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_2_selected_count >= 1)
    {
        message[0] = "* You berate Know Cone's#  ignorance and terrible grammar.";
        global.last_action_selected = "Action 3 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You berate Know Cone's#  ignorance and terrible grammar.";
        global.last_action_selected = "Action 3 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
