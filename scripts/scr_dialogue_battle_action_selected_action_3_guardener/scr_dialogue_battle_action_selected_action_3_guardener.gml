function scr_dialogue_battle_action_selected_action_3_guardener()
{
    if (global.enemy_mode == 0)
    {
        message[0] = "* You wriggle within your#  confines. The MERCY vines#  weakened!";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Message 0";
    }
    else
    {
        message[0] = "* You criticize Guardener for#  bugging out and attacking you.#  This does not help anyone.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Message 1";
    }
}
