function scr_dialogue_battle_action_selected_action_2_decibat()
{
    var action_2_selected_count;
    
    action_2_selected_count = global.action_2_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* Decibat is making too much#  noise to notice your silence.";
        global.last_action_selected = "Action 2 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You watch Decibat in silence.#* He seems to appreciate it.";
        global.last_action_selected = "Action 2 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
