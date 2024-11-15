function scr_recreate_heart_battle_menu_text_feisty_four()
{
    var last_text_move_select, random_text_move_select;
    
    last_text_move_select = global.last_text_move_select;
    instance_create_depth(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, -642, obj_dialogue_battle_move_select_any);
    
    if (text_deadlock_1 == true)
    {
    }
    else if (last_text_move_select == 0)
    {
        text_deadlock_message[0] = "* Time to get feisty!";
        text_deadlock_1 = true;
    }
    else
    {
        random_text_move_select = irandom_range(1, 9);
        
        if (random_text_move_select == 1)
        {
            text_deadlock_message[0] = "* Ed pounds his fists together#  triumphantly!";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 2)
        {
            text_deadlock_message[0] = "* Moray sharpens their blade.";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 3)
        {
            text_deadlock_message[0] = "* Ace is practicing sleight of#  hand.";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 4)
        {
            text_deadlock_message[0] = "* Mooch looks around suspiciously.";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 5)
        {
            text_deadlock_message[0] = "* The four are bickering.";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 6)
        {
            text_deadlock_message[0] = "* Mooch and Ace are playing 52#  card pickup.";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 7)
        {
            text_deadlock_message[0] = "* Moray leans on Ed to rest up.";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 8)
        {
            text_deadlock_message[0] = "* Smells like teamwork.";
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 9)
        {
            text_deadlock_message[0] = "* The four are deciding who#  attacks next.";
            text_deadlock_1 = true;
        }
    }
    
    with (obj_dialogue_battle_move_select_any)
    {
        message[0] = obj_heart_battle_menu.text_deadlock_message[0];
        message_length = string_length(message[message_current]);
    }
}
