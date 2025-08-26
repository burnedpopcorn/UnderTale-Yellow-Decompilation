function scr_dialogue_battle_action_selected_action_1_flower_girls()
{
    var action_1_selected_count = global.action_1_selected_count;
    
    switch (global.dunes_flag[31])
    {
        case 1:
            message[0] = "* You compliment the rich color#  of Violetta's flowers.";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You tell Violetta her attacks#  are impressive.";
            
            break;
        
        case 2:
            message[0] = "* You reach for Pedla's#  offering.";
            break;
        
        case 3:
            message[0] = "* You tell Rosa her flowers are#  stunning.";
            
            if (global.enemy_low_hp == true)
                message[0] = "* You tell Rosa her attacks are#  impressive.";
            
            break;
    }
    
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
