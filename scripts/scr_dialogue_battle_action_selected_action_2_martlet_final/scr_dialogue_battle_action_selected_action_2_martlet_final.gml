function scr_dialogue_battle_action_selected_action_2_martlet_final()
{
    if (!instance_exists(obj_martlet_final_act_helper))
    {
        instance_create(0, 0, obj_martlet_final_act_helper);
        message[0] = "* You refuse to back down...";
    }
    
    global.last_action_selected = "Action 2 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
