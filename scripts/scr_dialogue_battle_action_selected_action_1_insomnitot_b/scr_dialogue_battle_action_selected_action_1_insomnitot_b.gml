function scr_dialogue_battle_action_selected_action_1_insomnitot_b()
{
    var action_1_selected_count_2, action_3_selected_count_2;
    
    action_1_selected_count_2 = global.action_1_selected_count_2;
    action_3_selected_count_2 = global.action_3_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You hum a little ditty.#* Insomnitot seems too distracted#  to appreciate it.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 1 Low HP";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.enemy_sparing_2 == true)
    {
        message[0] = "* You attempt to sing a quiet#  lullaby, but it seems your#  services are no longer required.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 1 Sparing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_3_selected_count_2 >= 1)
    {
        message[0] = "* You attempt to sing a quiet#  lullaby.#* Insomnitot drifts off to sleep.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 1 Message 1";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You attempt to sing a quiet#  lullaby.#* Insomnitot looks bored.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 1 Message 0";
        global.last_action_selected_3 = "Nothing";
    }
}
