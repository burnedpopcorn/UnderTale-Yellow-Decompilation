function scr_dialogue_battle_action_selected_action_3_tellyvis_a()
{
    var action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You see if Telly's antennas#  still function. They do not.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Low HP";
    }
    else if (action_3_selected_count == 0)
    {
        message[0] = "* You help Telly finagle her#  antennas to find some#  programming.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Message 0";
    }
    else
    {
        message[0] = "* You attempt to touch Telly's#  antennas again but she motions#  you away.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 3 Message 1";
    }
}
