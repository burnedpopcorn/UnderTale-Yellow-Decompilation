function scr_dialogue_battle_action_selected_action_1_bowll_a()
{
    var action_1_selected_count, action_3_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You reach out toward Bowll but#  he takes a step back.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_3_selected_count >= 1)
    {
        message[0] = "* You use your bandana to wipe#  away some mud on Bowll.#* He sparkles.";
        global.last_action_selected = "Action 1 Sparing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You step towards Bowll but he#  backs up and huffs at you.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
