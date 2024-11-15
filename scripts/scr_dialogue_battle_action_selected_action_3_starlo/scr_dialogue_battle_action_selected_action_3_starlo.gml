function scr_dialogue_battle_action_selected_action_3_starlo()
{
    if (global.attack_cycle < 10)
        message[0] = "* You chomp and pull at the#  lasso but it only gets tighter.";
    else
        message[0] = "* You take a deep breath to#  prepare for the next attack.";
    
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
