function scr_dialogue_battle_action_selected_action_2_rorrim_a()
{
    var action_2_selected_count = global.action_2_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You critique your appearance.#* Rorrim seems disgusted.";
        global.last_action_selected = "Action 2 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.action_3_selected_count > 0)
    {
        message[0] = "* You critique your appearance.#* Rorrim is very pleased.";
        global.last_action_selected = "Action 2 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        random_number = 0;
        
        if (random_number == 0)
        {
            message[0] = "* You critique your outfit.#* Rorrim seems annoyed.";
            global.last_action_selected = "Action 2 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
