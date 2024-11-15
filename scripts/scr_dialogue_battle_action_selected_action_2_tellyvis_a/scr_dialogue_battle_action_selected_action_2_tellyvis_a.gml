function scr_dialogue_battle_action_selected_action_2_tellyvis_a()
{
    var action_2_selected_count;
    
    action_2_selected_count = global.action_2_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You couldn't sleep if you#  wanted to.";
        global.last_action_selected_2 = "Action 2 Low HP";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You begin to drift off to the#  dismay of Telly.. ";
        global.last_action_selected_2 = "Action 2 Message 0";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
