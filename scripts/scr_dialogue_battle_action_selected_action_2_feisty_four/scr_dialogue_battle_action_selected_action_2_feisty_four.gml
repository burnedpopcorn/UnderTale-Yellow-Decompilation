function scr_dialogue_battle_action_selected_action_2_feisty_four()
{
    var random_message, act_number;
    
    random_message = irandom_range(1, 3);
    
    if (random_message == 1)
        message[0] = "* You point at the#  Hospital frantically.#* They don't notice.";
    
    if (random_message == 2)
        message[0] = "* You throw sand into the air.#* Your clothes are dirty.";
    
    if (random_message == 3)
        message[0] = "* You fire your gun at the bell.#* You hear a nice ring.";
    
    act_number = global.act_number;
    
    switch (act_number)
    {
        case 1:
            global.last_action_selected = "Action 2 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
            break;
        
        case 2:
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 0";
            global.last_action_selected_3 = "Nothing";
            break;
        
        default:
    }
}
