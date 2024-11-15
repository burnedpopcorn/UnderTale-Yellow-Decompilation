function scr_dialogue_battle_action_selected_action_1_macro()
{
    if (global.turns_passed == 0)
        message[0] = "* Micro Froggit doesn't seem#  convinced. You may have been#  looking in the wrong direction.";
    else
        message[0] = "* Frog.";
    
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
