function scr_dialogue_battle_action_selected_action_1_dalv()
{
    var enemy_sparing, action_2_important, enemy_mode;
    
    enemy_sparing = global.enemy_sparing;
    action_2_important = global.action_2_important;
    enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 0:
            if (enemy_sparing == true || action_2_important == true)
            {
                message[0] = "* It appears Dalv is too focused#  to hear you.";
                global.last_action_selected = "Action 1 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            else
            {
                message[0] = "* Dalv does not seem to value#  communication.";
                global.last_action_selected = "Action 1 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            
            break;
        
        case 1:
            if (enemy_sparing == true || action_2_important == true)
            {
                message[0] = "* It appears Dalv is too focused#  to hear you.";
                global.last_action_selected = "Action 1 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            else
            {
                message[0] = "* Dalv doesn't want to hear you.";
                global.last_action_selected = "Action 1 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            
            break;
        
        case 2:
            message[0] = "* Dalv doesn't want to hear you.";
            global.last_action_selected = "Action 1 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
            break;
    }
}
