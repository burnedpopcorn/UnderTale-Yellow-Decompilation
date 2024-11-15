function scr_dialogue_battle_action_selected_action_2_penilla_a()
{
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You tell Penilla that she's#  wasting her time.";
        global.last_action_selected = "Action 2 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "* You put yourself in between#  Penilla and her work.";
            global.last_action_selected = "Action 2 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
        else if (random_number == 1)
        {
            message[0] = "* You put yourself in between#  Penilla and her work.";
            global.last_action_selected = "Action 2 Message 0";
            global.last_action_selected_2 = "Nothing";
            global.last_action_selected_3 = "Nothing";
        }
    }
}
