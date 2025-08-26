function scr_dialogue_battle_action_selected_action_2_ta()
{
    var action_2_selected_count_3 = global.action_2_selected_count_3;
    
    if (global.enemy_low_hp_3 == true)
    {
        message[0] = "* You attempt to climb Ta, but#  they run from you.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 2 Low HP";
    }
    else
    {
        message[0] = "* You attempt to climb Ta... and#  you succeed!#* Ta is very happy.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Action 2 Message 0";
    }
}
