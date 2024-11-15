function scr_dialogue_battle_action_selected_action_1_guardener()
{
    if (global.enemy_mode == 0)
    {
        message[0] = "* You wriggle within your#  confines. The FIGHT vines#  weakened!";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 1)
    {
        message[0] = "* You pick some flowers and offer#  them. Guardener is too#  distracted.";
        global.last_action_selected = "Action 1 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
