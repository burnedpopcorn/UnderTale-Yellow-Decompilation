function scr_dialogue_battle_action_selected_action_2_goosic_a()
{
    var action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You tune Goosic out.";
        global.last_action_selected_2 = "Action 2 Low HP";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.action_3_selected_count >= 1)
    {
        message[0] = "* You try not to get wrapped up#  in the music.";
        global.last_action_selected_2 = "Action 2 Message 1";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You plug your ears in hopes to#  block the noise. Goosic just#  turns it up.";
        global.last_action_selected_2 = "Action 2 Message 0";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
