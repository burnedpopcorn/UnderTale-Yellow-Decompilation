function scr_dialogue_battle_action_selected_action_1_decibat()
{
    var action_1_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* Decibat seems to have given up#  hope.";
            global.last_action_selected = "Action 1 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else if (random_number == 1)
        {
            message[0] = "* Decibat is in too much pain to#  care.";
            global.last_action_selected = "Action 1 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
    else if (global.enemy_sparing == true)
    {
        message[0] = "* You open your mouth to speak.#* Decibat covers your mouth.";
        global.last_action_selected = "Action 1 Sparing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* Decibat hushes you furiously.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
