function scr_dialogue_battle_action_selected_action_2_sweet_corn_b()
{
    var action_2_selected_count_2 = global.action_2_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You give Sweet Corn a long,#  awkward hug.#* She doesn't like it.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 2 Low HP";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* You give Sweet Corn a big hug.#* She briefly gets stuck to your#  shirt.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 0";
            global.last_action_selected_3 = "Nothing";
        }
        else if (random_number == 1)
        {
            message[0] = "* You give Sweet Corn a big hug.#* She briefly gets stuck to your#  shirt.";
            global.last_action_selected = "Nothing";
            global.last_action_selected_2 = "Action 2 Message 0";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
