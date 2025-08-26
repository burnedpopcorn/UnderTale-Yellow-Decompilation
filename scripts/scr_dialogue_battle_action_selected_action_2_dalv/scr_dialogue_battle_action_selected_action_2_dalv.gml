function scr_dialogue_battle_action_selected_action_2_dalv()
{
    var enemy_sparing = global.enemy_sparing;
    var action_2_important = global.action_2_important;
    var enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 0:
            if (enemy_sparing == true || action_2_important == true)
            {
                message[0] = "* Dalv accepts your offer of#  goodwill.";
                global.last_action_selected = "Action 2 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            else
            {
                message[0] = "* Dalv doesn't notice your offer#  of goodwill.";
                global.last_action_selected = "Action 2 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            
            break;
        
        case 1:
            if (enemy_sparing == true || action_2_important == true)
            {
                message[0] = "* Dalv doesn't want to.";
                global.last_action_selected = "Action 2 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            else
            {
                message[0] = "* Dalv rejects your offer of#  goodwill.";
                global.last_action_selected = "Action 2 Message 0";
                global.last_action_selected_2 = "Nothing";
                global.last_action_selected_3 = "Nothing";
            }
            
            break;
        
        case 2:
            message[0] = "* Dalv rejects your offer of#  goodwill.";
            global.last_action_selected = "Action 2 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
            break;
    }
}
