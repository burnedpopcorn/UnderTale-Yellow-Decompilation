function scr_dialogue_battle_action_selected_action_2_axis()
{
    message[0] = "* AXIS ACTION MESSAGE 2";
    var random_message = irandom_range(0, 2);
    
    switch (random_message)
    {
        case 0:
            message[0] = "* You tell Axis he's not great at#  his job. If he could frown, he#  would.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 0";
            global.last_action_selected_3 = "Nothing";
            break;
        
        case 1:
            message[0] = "* You criticize Axis' attack#  strategy. Steam shoots out of#  his hearing ducts.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 1";
            global.last_action_selected_3 = "Nothing";
            break;
        
        case 2:
            message[0] = "* You say something rude to Axis.#  He \"HONESTLY DOES NOT APPRECIATE#  IT.\"";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 2";
            global.last_action_selected_3 = "Nothing";
            break;
    }
}
