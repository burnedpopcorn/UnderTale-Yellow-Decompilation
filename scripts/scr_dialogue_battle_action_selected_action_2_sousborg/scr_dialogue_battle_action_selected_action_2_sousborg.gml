function scr_dialogue_battle_action_selected_action_2_sousborg()
{
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You wash Sousborg's oil off of#  your hands.";
        global.last_action_selected_2 = "Action 2 Low HP";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 0)
    {
        message[0] = "* You accuse Sousborg of#  undercooking his food.";
        global.last_action_selected_2 = "Action 2 Message 0";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 1)
    {
        message[0] = "* You tell Sousborg to heat the#  stove until the egg begins to#  sizzle.";
        global.last_action_selected_2 = "Action 2 Message 1";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 2)
    {
        message[0] = "* You tell Sousborg to pet the#  egg. He does. This accomplished#  nothing.";
        global.last_action_selected_2 = "Action 2 Message 2";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
