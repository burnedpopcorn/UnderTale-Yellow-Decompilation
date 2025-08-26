function scr_dialogue_battle_action_selected_action_2_flower_girls()
{
    var action_2_selected_count = global.action_2_selected_count;
    
    switch (global.dunes_flag[31])
    {
        case 1:
            message[0] = "* You tell Violetta she has#  nothing to fear.";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You tell Violetta to get lost.";
            
            break;
        
        case 2:
            message[0] = "* You tell Pedla she's the#  sweetest Flower Girl in the#  Underground!";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You tell Pedla her attacks are#  impressive.";
            
            break;
        
        case 3:
            message[0] = "* You ask if you can have one of#  Rosa's flowers.";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You ask Rosa to give you a#  real challenge.";
            
            break;
    }
    
    global.last_action_selected = "Action 2 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
