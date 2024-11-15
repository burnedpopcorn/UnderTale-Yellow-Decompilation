function scr_dialogue_battle_action_selected_action_1_martlet_pacifist()
{
    var action_1_selected_count;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (action_1_selected_count >= 2)
    {
        message[0] = "* You tap your foot on the ground.#* Martlet tries talking even#  faster.";
        global.last_action_selected = "Action 1 Message 2";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_1_selected_count >= 1)
    {
        message[0] = "* You fake a yawn.#* Martlet starts talking faster#  still.";
        global.last_action_selected = "Action 1 Message 1";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You tap your wrist impatiently.#* Martlet looks apologetic and#  tries to talk a little faster.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
