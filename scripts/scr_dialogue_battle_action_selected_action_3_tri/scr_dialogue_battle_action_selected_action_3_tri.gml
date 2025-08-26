function scr_dialogue_battle_action_selected_action_3_tri()
{
    var action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You tell them to hug it out,#  but they aren't listening.";
        global.last_action_selected = "Action 3 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You tell Tri, Hec and Ta to#  settle their differences and#  hug it out.";
        global.last_action_selected = "Action 3 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
