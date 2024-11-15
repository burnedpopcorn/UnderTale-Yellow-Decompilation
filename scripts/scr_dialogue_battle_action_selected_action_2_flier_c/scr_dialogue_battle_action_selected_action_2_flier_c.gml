function scr_dialogue_battle_action_selected_action_2_flier_c()
{
    var action_2_selected_count_3;
    
    action_2_selected_count_3 = global.action_2_selected_count_3;
    
    if (global.enemy_low_hp_3 == true)
    {
        message[0] = "* You compliment Flier's choice#  of outfits.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 2 Low HP";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* You tell Flier he looks proud.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Action 2 Message 0";
        }
        else if (random_number == 1)
        {
            message[0] = "* You tell Flier he looks proud.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Action 2 Message 0";
        }
    }
}
