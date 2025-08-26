function scr_dialogue_battle_action_selected_action_1_ta()
{
    var action_1_selected_count_3 = global.action_1_selected_count_3;
    
    if (global.enemy_low_hp_3 == true)
    {
        message[0] = "* You laugh at Ta.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 1 Low HP";
    }
    else
    {
        message[0] = "* You burst out into laughter#  over their topple.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 1 Message 0";
    }
}
