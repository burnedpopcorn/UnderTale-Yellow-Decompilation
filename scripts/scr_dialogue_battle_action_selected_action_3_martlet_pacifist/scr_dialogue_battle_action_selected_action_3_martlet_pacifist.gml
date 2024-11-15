function scr_dialogue_battle_action_selected_action_3_martlet_pacifist()
{
    var action_3_selected_count;
    
    action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_mode == 7)
    {
        message[0] = "* You insult Martlet's job#  performance.";
        global.last_action_selected = "Action 3 Phase 3";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_3_selected_count >= 1)
    {
        message[0] = "* You forcibly tell Martlet you#  don't like her clothes.";
        global.last_action_selected = "Action 3 Phase 2";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You call Martlet a weenie.";
        global.last_action_selected = "Action 3 Phase 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
