function scr_dialogue_battle_action_selected_action_1_micro_froggit()
{
    var action_1_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (action_1_selected_count == 0)
    {
        message[0] = "* Micro Froggit doesn't seem#  convinced. You may have been#  looking in the wrong direction.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_1_selected_count >= 1)
    {
        message[0] = "* You can't tell how#  Micro Froggit is reacting.#* You think it looks flattered.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
