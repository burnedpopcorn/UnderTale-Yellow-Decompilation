function scr_dialogue_battle_action_selected_action_3_frostermit_a()
{
    var action_3_selected_count = global.action_3_selected_count;
    var enemy_mode = global.enemy_mode;
    
    if (enemy_mode == 0)
    {
        if (global.enemy_low_hp == true)
        {
            message[0] = "* You marvel at how it hasn't#  crumbled.";
            global.last_action_selected = "Action 3 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else
        {
            message[0] = "* You comment on the igloo's fine#  craftsmanship.#* It's an igloo.";
            global.last_action_selected = "Action 3 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
    else if (enemy_mode == 1)
    {
        if (global.enemy_low_hp == true)
        {
            message[0] = "* You commend Frostermit's sharp#  skill.";
            global.last_action_selected = "Action 3 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else
        {
            message[0] = "* You compliment Frostermit's#  hiding skills.";
            global.last_action_selected = "Action 3 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
