function scr_dialogue_battle_action_selected_action_3_ta()
{
    var action_3_selected_count_3 = global.action_3_selected_count_3;
    
    if (global.enemy_low_hp_3 == true)
    {
        message[0] = "* You tell them to hug it out,#  but they aren't listening.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Low HP";
    }
    else
    {
        message[0] = "* You tell Tri, Hec and Ta to#  settle their differences#  and hug it out.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Message 0";
    }
}
