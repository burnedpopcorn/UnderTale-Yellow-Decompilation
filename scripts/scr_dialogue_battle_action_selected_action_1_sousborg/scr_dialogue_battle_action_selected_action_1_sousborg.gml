function scr_dialogue_battle_action_selected_action_1_sousborg()
{
    var action_1_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You toss Sousborg's cooking#  into the garbage.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 0)
    {
        message[0] = "* You tell Sousborg to take the#  egg and crack it over a pan.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 1)
    {
        message[0] = "* You tell Sousborg to fill the#  pan with water and turn up the#  heat.";
        global.last_action_selected = "Action 1 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 2)
    {
        message[0] = "* You tell Sousborg to wrap the#  egg in plastic and let it chill#  out.";
        global.last_action_selected = "Action 1 Message 2";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
