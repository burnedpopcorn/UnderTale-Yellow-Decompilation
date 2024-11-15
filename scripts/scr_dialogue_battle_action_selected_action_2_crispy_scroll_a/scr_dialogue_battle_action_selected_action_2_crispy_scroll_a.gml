function scr_dialogue_battle_action_selected_action_2_crispy_scroll_a()
{
    var action_2_selected_count;
    
    action_2_selected_count = global.action_2_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You yell at Crispy Scroll.";
        global.last_action_selected = "Action 2 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_2_selected_count >= 1)
    {
        message[0] = "* You join Crispy Scroll in his#  excited yelling.";
        global.last_action_selected = "Action 2 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You join Crispy Scroll in his#  excited yelling.";
        global.last_action_selected = "Action 2 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
