function scr_dialogue_battle_action_selected_action_3_flower_girls()
{
    switch (global.dunes_flag[31])
    {
        case 1:
            message[0] = "* You tell Violetta she's weird.";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You tell Violetta she's weak.";
            
            break;
        
        case 2:
            message[0] = "* You tell Pedla you aren't#  interested in any flowers.";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You tell Pedla you don't want#  her flowers.";
            
            break;
        
        case 3:
            message[0] = "* You tell Rosa she's too loud.";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You tell Rosa she's weak.";
            
            break;
    }
    
    global.last_action_selected = "Action 3 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
