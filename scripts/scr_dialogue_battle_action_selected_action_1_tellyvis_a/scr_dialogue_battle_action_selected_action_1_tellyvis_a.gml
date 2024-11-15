function scr_dialogue_battle_action_selected_action_1_tellyvis_a()
{
    var action_1_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* Nothing on.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.action_3_selected_count == 0)
    {
        message[0] = "* While this IS your favorite#  channel, Telly-Vis don't look#  amused.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* Telly finds a show she thinks#  you'll love.";
        global.last_action_selected = "Action 1 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
