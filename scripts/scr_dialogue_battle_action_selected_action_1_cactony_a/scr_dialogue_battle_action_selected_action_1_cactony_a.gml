function scr_dialogue_battle_action_selected_action_1_cactony_a()
{
    var action_1_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You prick your finger on#  Cactony's bristles.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You give Cactony a careful pat#  in between two spines.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
