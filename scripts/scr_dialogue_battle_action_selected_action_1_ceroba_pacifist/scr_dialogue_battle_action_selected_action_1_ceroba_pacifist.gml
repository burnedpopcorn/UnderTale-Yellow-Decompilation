function scr_dialogue_battle_action_selected_action_1_ceroba_pacifist()
{
    global.last_action_selected = "Action 1 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
    
    if (global.hotland_flag[2] == 0)
    {
        message[0] = "* You try to talk to Ceroba but#  her attention is impenetrable.";
    }
    else if (!instance_exists(obj_ceroba_pacifist_act_helper))
    {
        instance_create(0, 0, obj_ceroba_pacifist_act_helper);
        message[0] = "* You hold onto your hopes...";
    }
}
