function scr_dialogue_battle_action_selected_action_1_martlet_final()
{
    var action_1_selected_count, rnd;
    
    action_1_selected_count = global.action_1_selected_count;
    
    if (global.hotland_flag[9] < 2)
    {
        rnd = choose(0, 1, 2);
        
        switch (rnd)
        {
            case 0:
                message[0] = "* A moment of remembrance is#  taken...";
                message[1] = "* The bloodshed ends here.";
                break;
            
            case 1:
                message[0] = "* A moment of remembrance is#  taken...";
                message[1] = "* The mission is almost#  complete.";
                break;
            
            case 2:
                message[0] = "* A moment of remembrance is#  taken...";
                message[1] = "* They will be avenged.";
                break;
        }
    }
    else
    {
        message[0] = "* An end in sight.\t";
        message[1] = "* Nothing else matters.";
    }
    
    global.last_action_selected = "Action 1 Low HP";
    global.last_action_selected_2 = "Nothing";
    global.last_action_selected_3 = "Nothing";
}
