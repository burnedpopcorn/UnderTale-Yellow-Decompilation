function scr_dialogue_battle_action_selected_action_3_sousborg()
{
    if (global.enemy_mode == 1)
    {
        message[0] = "* You tell Sousborg to throw that#  puppy into the oven!";
        global.last_action_selected_3 = "Action 3 Message 0";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
    }
    else if (global.enemy_mode == 2)
    {
        message[0] = "* You tell Sousborg to grab some#  pepper and sprinkle it over the#  egg.";
        global.last_action_selected_3 = "Action 3 Message 1";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
    }
}
