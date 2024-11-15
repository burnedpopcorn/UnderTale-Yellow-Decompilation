function scr_dialogue_battle_action_selected_action_2_frostermit_a()
{
    var action_2_selected_count, enemy_mode;
    
    action_2_selected_count = global.action_2_selected_count;
    enemy_mode = global.enemy_mode;
    
    if (enemy_mode == 0)
    {
        if (global.enemy_low_hp == true)
        {
            message[0] = "* You wiggle around in front of#  the igloo.#* Nothing happens.";
            global.last_action_selected = "Action 2 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else
        {
            message[0] = "* You do a little dance.#* Someone has come out to#  investigate.";
            global.last_action_selected = "Action 2 Out";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
            
            if (global.battle_enemy_name == "frostermit know cone duo")
                global.enemy_special_text = 1;
        }
    }
    else if (enemy_mode == 1)
    {
        if (global.enemy_low_hp == true)
        {
            message[0] = "* You mimic Frostermit's crab#  moves.#* It isn't pleased.";
            global.last_action_selected = "Action 2 Low HP";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else if (action_2_selected_count >= 2)
        {
            message[0] = "* You try to do the worm.#* You fall flat on the snow, but#  Frostermit is impressed anyway.";
            global.last_action_selected = "Action 2 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else
        {
            message[0] = "* You start doing a crab walk#  dance.#* Frostermit jumps in.";
            global.last_action_selected = "Action 2 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
