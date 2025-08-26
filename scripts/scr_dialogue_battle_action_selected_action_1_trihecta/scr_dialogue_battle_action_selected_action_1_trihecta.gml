function scr_dialogue_battle_action_selected_action_1_trihecta()
{
    var action_1_selected_count = global.action_1_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You attempt to push Trihecta#  over.#* They stand firm.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_1_selected_count >= 1)
    {
        message[0] = "* Trihecta topples over!";
        global.last_action_selected = "Action Separated";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You push Trihecta away.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
