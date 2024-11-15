function scr_dialogue_battle_action_selected_action_3_crispy_scroll_a()
{
    var action_3_selected_count;
    
    action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You mock Crispy's interests.#* He seems very offended.";
        global.last_action_selected = "Action 3 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
            message[0] = "* You give Crispy Scroll a#  judgmental look.#* He seems offended.";
        else if (random_number == 1)
            message[0] = "* You give Crispy Scroll a#  judgmental look.#* He seems offended.";
        
        global.last_action_selected = "Action 3 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
