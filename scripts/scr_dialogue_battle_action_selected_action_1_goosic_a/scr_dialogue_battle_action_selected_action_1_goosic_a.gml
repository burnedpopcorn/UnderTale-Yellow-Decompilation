function scr_dialogue_battle_action_selected_action_1_goosic_a()
{
    var action_3_selected_count;
    
    action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You calm yourself in the midst#  of the battle.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.action_3_selected_count >= 1)
    {
        message[0] = "* You close your eyes and tap#  your foot to the music. Goosic#  joins you.";
        global.last_action_selected = "Action 1 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You try to enjoy the music but#  can't keep up.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
