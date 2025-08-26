function scr_dialogue_battle_action_selected_action_3_flier_c()
{
    var action_3_selected_count_3 = global.action_3_selected_count_3;
    
    if (global.enemy_low_hp_3 == true)
    {
        message[0] = "* You tell Flier that he is#  depressing.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Low HP";
    }
    else
    {
        if (global.action_2_selected_count_3 > 0)
        {
            message[0] = "* Flier is reconsidering his#  reconsiderations.";
        }
        else
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
                message[0] = "* You insult Flier's choice of#  outfits.";
            else if (random_number == 1)
                message[0] = "* You insult Flier's choice of#  outfits.";
        }
        
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Message 0";
    }
}
