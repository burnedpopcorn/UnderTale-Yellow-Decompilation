function scr_dialogue_battle_action_selected_action_2_ceroba_pacifist()
{
    global.last_action_selected = "Action 2 Message 0";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
    
    if (global.hotland_flag[2] == 0)
    {
        message[0] = "* You take a breath.#* The world seems to slow, but#  only for a moment.";
    }
    else if (!instance_exists(obj_ceroba_pacifist_act_helper))
    {
        instance_create(0, 0, obj_ceroba_pacifist_act_helper);
        message[0] = "* You refuse to back down...";
    }
}
