function scr_dialogue_battle_action_selected_action_2_hec()
{
    var action_2_selected_count_2;
    
    action_2_selected_count_2 = global.action_2_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You attempt to climb Hec, but#  they snap at you.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 2 Low HP";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You attempt to climb Hec, but#  they push you back.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 2 Message 0";
        global.last_action_selected_3 = "Nothing";
    }
}
