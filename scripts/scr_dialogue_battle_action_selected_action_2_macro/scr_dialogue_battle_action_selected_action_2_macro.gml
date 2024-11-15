function scr_dialogue_battle_action_selected_action_2_macro()
{
    if (global.turns_passed == 0)
        message[0] = "* Micro Froggit is shaking, but#  you might just be straining#  your eyes.";
    else
        message[0] = "* Frog?";
    
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
