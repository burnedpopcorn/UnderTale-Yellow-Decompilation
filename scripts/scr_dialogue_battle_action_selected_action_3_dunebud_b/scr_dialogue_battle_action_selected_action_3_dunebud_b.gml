function scr_dialogue_battle_action_selected_action_3_dunebud_b()
{
    var action_3_selected_count;
    
    action_3_selected_count = global.action_3_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You take a step at Dunebud to#  intimidate them.#* They flinch a little.";
        global.last_action_selected_2 = "Action 3 Low HP";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_3_selected_count >= 1)
    {
        message[0] = "* You make an angry face at Dunebud.#* They get scared.";
        global.last_action_selected_2 = "Action 3 Message 1";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You wave your hand dismissively#  at Dunebud.#* They don't understand.";
        global.last_action_selected = "Action 3 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
