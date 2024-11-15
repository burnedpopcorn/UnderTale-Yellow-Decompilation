function scr_dialogue_battle_action_selected_action_1_starlo()
{
    if (global.attack_cycle < 10)
    {
        message[0] = "* You squirm inside your leather#  cage to no avail.";
    }
    else if (global.turns_passed >= 17)
    {
        message[0] = "* You lower your weapon and#  raise your hands.";
    }
    else
    {
        message[0] = "* You spin your six-shooter#  several times to intimidate#  Starlo.";
        message[1] = "* He instead seems impressed.";
    }
    
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
