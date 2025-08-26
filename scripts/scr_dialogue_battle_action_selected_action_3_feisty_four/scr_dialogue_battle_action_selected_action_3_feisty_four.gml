function scr_dialogue_battle_action_selected_action_3_feisty_four()
{
    message[0] = "* You smirk at the four's antics.#* They're trying.";
    var act_number = global.act_number;
    
    switch (act_number)
    {
        case 1:
            global.last_action_selected = "Action 1 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
            break;
        
        case 2:
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 1 Message 0";
            global.last_action_selected_3 = "Nothing";
            break;
        
        default:
    }
}
