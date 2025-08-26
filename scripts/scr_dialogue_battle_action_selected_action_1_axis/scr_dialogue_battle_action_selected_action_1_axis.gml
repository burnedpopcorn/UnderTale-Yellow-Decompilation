function scr_dialogue_battle_action_selected_action_1_axis()
{
    if (!global.action_1_important)
    {
        message[0] = "* You ready your trusty shield#  for whatever awaits.";
        global.last_action_selected = "Action 1 Message 0";
    }
    else if (global.route != 2)
    {
        var current_turn = global.action_1_selected_count;
        
        switch (current_turn)
        {
            case 0:
                message[0] = "* (You commend Axis' vigilance.)";
                break;
            
            case 1:
                message[0] = "* (You tell Axis his steel frame#  is unwavering.)";
                break;
            
            case 2:
            default:
                message[0] = "* (You tell Axis his energy#  magic is the most impressive#  you've seen.)";
                break;
        }
        
        global.last_action_selected = "Action 1 Message 1";
    }
    else
    {
        message[0] = "* (You ask Ceroba to present#  your metallic creation.)";
        global.last_action_selected = "Action 1 Message 1";
    }
    
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
