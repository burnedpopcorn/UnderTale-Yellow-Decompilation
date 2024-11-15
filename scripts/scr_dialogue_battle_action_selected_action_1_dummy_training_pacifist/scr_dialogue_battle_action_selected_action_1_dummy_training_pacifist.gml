function scr_dialogue_battle_action_selected_action_1_dummy_training_pacifist()
{
    var action_1_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (action_1_selected_count >= 1)
    {
        message[0] = "* You intimidate the dummy more.#* It does nothing.";
        global.last_action_selected = "Action 1 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You attempt to speak to the#  dummy.#* North Star is confused.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
