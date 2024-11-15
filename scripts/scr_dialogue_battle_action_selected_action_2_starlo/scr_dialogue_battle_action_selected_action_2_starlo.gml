function scr_dialogue_battle_action_selected_action_2_starlo()
{
    if (global.attack_cycle < 10)
    {
        message[0] = "* You narrow your eyes and#  everything becomes letterboxed.";
        message[1] = "* Starlo doesn't know how this#  is possible.";
    }
    else
    {
        message[0] = "* You shoot a nasty look at#  Starlo...";
        message[1] = "* He gives a worried face before#  forcefully glaring back.";
    }
    
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
