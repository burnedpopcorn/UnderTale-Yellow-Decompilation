with (other)
{
    if (keyboard_multicheck_pressed(0) && scr_interact())
        scene = 1;
    
    switch (scene)
    {
        case 1:
            scr_text();
            
            if (global.flag[0] == 0)
            {
                with (msg)
                {
                    dialogue_is_minishop = true;
                    message[0] = "* (According to the price list,#  it's a lemonade stand: 5g a#  glass.)";
                    message[1] = "* (Take some?)";
                    ch_msg = 1;
                    ch[1] = "Yes";
                    ch[2] = "No";
                    
                    if (outcome == 1)
                    {
                        message[2] = "* (You pour yourself a glass but#  there is no attendant to take#  your money. What poor service.)";
                        message[3] = "* (Leave a tip?)";
                        scr_item("Lemonade");
                        global.flag[0] = 1;
                        other.image_index = 1;
                        other.scene++;
                    }
                    
                    if (outcome == 2)
                        global.dialogue_open = false;
                }
            }
            else
            {
                with (msg)
                {
                    dialogue_is_minishop = true;
                    message[0] = "* (There's no lemonade left.)";
                }
            }
            
            break;
        
        case 2:
            with (msg)
            {
                dialogue_is_minishop = true;
                ch_msg = 3;
                ch[1] = "Yes";
                ch[2] = "No";
                
                if (outcome == 1)
                {
                    message[4] = "* (How much?)";
                    other.scene++;
                }
                
                if (outcome == 2)
                    global.dialogue_open = false;
            }
            
            break;
        
        case 3:
            with (msg)
            {
                dialogue_is_minishop = true;
                ch_msg = 4;
                ch[1] = "Large\nAmount";
                ch[2] = "Small\nAmount";
                
                if (outcome == 1)
                {
                    if (global.player_gold > 5)
                    {
                        global.player_gold -= 5;
                        message[5] = "* (You leave 5g in the tip jar.#  Your conscience feels light as#  a feather.)";
                    }
                    else if (global.player_gold < 5 && global.player_gold > 0)
                    {
                        global.player_gold -= global.player_gold;
                        message[5] = "* (You leave all you have in the#  tip jar.)";
                    }
                    else if (global.player_gold <= 0)
                    {
                        message[5] = "* (You have no gold.)";
                    }
                    
                    other.scene++;
                }
                
                if (outcome == 2)
                {
                    if (global.player_gold >= 1)
                    {
                        global.player_gold -= 1;
                        message[5] = "* (You break a coin in half and#  debate which half to throw in#  before tossing one at random.)";
                        message[6] = "* (They are both worthless anyway#  so it doesn't really matter.)";
                    }
                    else if (global.player_gold <= 0)
                    {
                        message[5] = "* (You have no gold.)";
                    }
                    
                    other.scene++;
                }
            }
            
            break;
    }
    
    if (!global.dialogue_open)
        scene = 0;
}
