function scr_dialogue_battle_action_selected_action_1_penilla_a()
{
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You compliment Penilla's#  shading skills.#* She is displeased.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* You compliment Penilla's work.#* She looks a little#  uncomfortable.";
            global.last_action_selected = "Action 1 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else if (random_number == 1)
        {
            message[0] = "* You compliment Penilla's work.#* She looks a little#  uncomfortable.";
            global.last_action_selected = "Action 1 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
