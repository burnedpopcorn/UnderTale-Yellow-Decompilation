function scr_dialogue_battle_action_selected_action_2_slither_a()
{
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You believe that Sir Slither#  wants to stay alive.";
        global.last_action_selected = "Action 2 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You buy into Sir Slither's#  fancy words. Something feels#  off.";
        global.last_action_selected = "Action 2 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
