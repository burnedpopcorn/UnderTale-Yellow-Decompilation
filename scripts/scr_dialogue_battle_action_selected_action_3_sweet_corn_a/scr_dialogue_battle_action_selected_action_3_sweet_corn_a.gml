function scr_dialogue_battle_action_selected_action_3_sweet_corn_a()
{
    var action_3_selected_count;
    
    action_3_selected_count = global.action_3_selected_count;
    
    if (global.enemy_low_hp == true)
    {
        global.item_gifted = "Nothing";
        message[0] = "* You offer Sweet Corn a gift.";
        global.last_action_selected = "Action 3 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        for (i = 1; i <= 8; i += 1)
        {
            if (global.item_slot[i] == "Candy Corn")
            {
                while (i < 8)
                {
                    global.item_slot[i] = global.item_slot[i + 1];
                    i += 1;
                }
                
                global.item_slot[8] = "Nothing";
                global.item_gift = "Candy Corn";
                global.item_gift_count += 1;
                message[0] = "* You give Sweet Corn your#  Candy Corn.";
                break;
            }
        }
        
        if (global.item_gift == "Nothing")
        {
            for (i = 1; i <= 8; i += 1)
            {
                if (global.item_slot[i] == "Corn Dog")
                {
                    while (i < 8)
                    {
                        global.item_slot[i] = global.item_slot[i + 1];
                        i += 1;
                    }
                    
                    global.item_slot[8] = "Nothing";
                    global.item_gift = "Corn Dog";
                    global.item_gift_count += 1;
                    message[0] = "* You give Sweet Corn your Corn#  Dog.";
                    break;
                }
            }
        }
        
        if (global.item_gift == "Nothing")
            message[0] = "* You can't think of a suitable#  gift.";
        
        global.last_action_selected = "Action 3 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
