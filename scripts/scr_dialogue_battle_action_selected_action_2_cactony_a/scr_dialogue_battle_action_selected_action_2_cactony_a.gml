function scr_dialogue_battle_action_selected_action_2_cactony_a()
{
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You ignore Cactony.";
        global.last_action_selected = "Action 2 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You keep a safe distance#  between you and Cactony.";
        global.last_action_selected = "Action 2 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
