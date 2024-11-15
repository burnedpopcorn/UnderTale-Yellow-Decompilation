function scr_dialogue_battle_action_selected_action_3_ceroba_pacifist()
{
    global.last_action_selected = "Action 3 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
    
    if (global.hotland_flag[2] == 0)
    {
        message[0] = "* You look up at Ceroba, enraged#  by what she's done.";
    }
    else if (!instance_exists(obj_ceroba_pacifist_act_helper))
    {
        instance_create(0, 0, obj_ceroba_pacifist_act_helper);
        message[0] = "* You think of those you love#  most...";
    }
}
