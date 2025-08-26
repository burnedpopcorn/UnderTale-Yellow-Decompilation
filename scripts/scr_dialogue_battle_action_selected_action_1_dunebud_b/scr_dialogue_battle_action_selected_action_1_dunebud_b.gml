function scr_dialogue_battle_action_selected_action_1_dunebud_b()
{
    var action_1_selected_count = global.action_1_selected_count_2;
    var action_2_selected_count = global.action_2_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You attempt to pat Dunebud.#* They slink away.";
        global.last_action_selected_2 = "Action 1 Low HP";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (action_2_selected_count >= 1)
    {
        message[0] = "* You give Dunebud a few loving#  pats.#* They nuzzle your hand.";
        global.last_action_selected_2 = "Action 1 Sparing";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You cautiously pat the top of#  Dunebud.#* They seem confused.";
        global.last_action_selected_2 = "Action 1 Message 0";
        global.last_action_selected = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
