function scr_dialogue_battle_action_selected_action_3_insomnitot_a()
{
    var action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You wave your hand slowly in#  front of Insomnitot's face.#* It doesn't react.";
        global.last_action_selected = "Action 3 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_sparing == true)
    {
        message[0] = "* You reach for Insomnitot's#  tassel, but think better of#  disturbing its slumber.";
        global.last_action_selected = "Action 3 Sparing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You swing Insomnitot's tassel#  in front of its face.";
        global.last_action_selected = "Action 3 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
