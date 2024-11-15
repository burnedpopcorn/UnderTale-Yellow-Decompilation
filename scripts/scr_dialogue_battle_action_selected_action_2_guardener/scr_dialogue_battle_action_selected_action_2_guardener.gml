function scr_dialogue_battle_action_selected_action_2_guardener()
{
    if (global.enemy_mode == 0)
    {
        message[0] = "* You wriggle within your#  confines. The ITEM vines#  weakened!";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 2 Message 0";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_mode == 1)
    {
        switch (global.action_2_selected_count)
        {
            case 0:
                message[0] = "* You plead with Guardener and it#  seems to have an effect. Offense#  level lowered!";
                break;
            
            case 1:
                message[0] = "* You try to convince Guardener#  to stop fighting. Offense level#  lowered!\t";
                break;
            
            case 2:
                message[0] = "* You tell Guardener that this is#  a misunderstanding. Offense#  level lowered!\t";
                break;
            
            case 3:
                message[0] = "* You ask Guardener to think#  about what she's doing. Offense#  level lowered!";
                break;
            
            case 4:
                message[0] = "* You use rational in hopes of#  de-escalating the situation.#  Offense level lowered!";
                break;
        }
        
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 2 Message 1";
        global.last_action_selected_3 = "Nothing";
    }
}
