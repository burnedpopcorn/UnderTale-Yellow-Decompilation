function scr_dialogue_battle_action_selected_action_1_el_bailador()
{
    if (global.route != 3)
    {
        message[0] = "* You clumsily spin around.#* El Bailador appreciates the#  effort.";
    }
    else
    {
        message[0] = "* You stare at the enemy with#  irritation.";
        message[1] = "* He tries to act like he#  doesn't notice.";
    }
    
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
