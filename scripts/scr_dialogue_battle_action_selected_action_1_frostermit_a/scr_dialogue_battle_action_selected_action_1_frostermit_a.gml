function scr_dialogue_battle_action_selected_action_1_frostermit_a()
{
    var action_1_selected_count, enemy_mode;
    
    action_1_selected_count = global.action_1_selected_count;
    enemy_mode = global.enemy_mode;
    
    if (enemy_mode == 0)
    {
        if (global.enemy_low_hp == true)
        {
            message[0] = "* You look over the damaged igloo.";
            global.last_action_selected = "Action 1 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else
        {
            message[0] = "* It's just an igloo.";
            global.last_action_selected = "Action 1 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
    else if (enemy_mode == 1)
    {
        if (global.enemy_low_hp == true)
        {
            message[0] = "* You stare at Frostermit.";
            global.last_action_selected = "Action 1 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else
        {
            message[0] = "* You begin giving Frostermit a#  discerning once-over.#* It looks uncomfortable.";
            global.last_action_selected = "Action 1 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
