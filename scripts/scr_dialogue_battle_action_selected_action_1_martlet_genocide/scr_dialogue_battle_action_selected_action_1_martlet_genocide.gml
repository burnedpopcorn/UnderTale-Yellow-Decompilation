function scr_dialogue_battle_action_selected_action_1_martlet_genocide()
{
    var enemy_mode = global.enemy_mode;
    var action_1_selected_count = global.action_1_selected_count;
    
    if (enemy_mode == 3)
    {
        message[0] = "* Sorry.";
        global.last_action_selected = "Action 1 Fight Mode";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_1_selected_count >= 1)
    {
        message[0] = "* You say you're sorry again.";
        global.last_action_selected = "Action 1 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You say you're sorry for#  everything.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
