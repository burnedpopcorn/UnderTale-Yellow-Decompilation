event_inherited();

if (interact)
    waiter = 1;

if (waiter)
{
    if (npc_flag == 0)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = snd_talk_default;
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* (You open the refrigerator and#  find some leftover corn#  chowder.)";
            message[1] = "* (Take it?)";
            
            if (outcome == 1)
            {
                if (global.party_member != -4)
                {
                    sndfnt_array[2] = snd_talk_martlet;
                    message[2] = "* You that hungry?";
                    message[3] = "* Um, alright then.    ";
                    message[4] = "* I suppose she won't#  miss it... right?";
                    prt[2] = spr_martlet_head_confused;
                    prt[3] = spr_martlet_head_questioning;
                    prt[4] = spr_martlet_head_moderate;
                    sndfnt_array[5] = snd_talk_default;
                }
                
                if (scr_item("Corn Chowder"))
                {
                    var msg_number;
                    
                    if (global.party_member != -4)
                        msg_number = 5;
                    else
                        msg_number = 2;
                    
                    message[msg_number] = "* (You got some Corn Chowder!)";
                    other.item_check = 1;
                }
                else
                {
                    var msg_number;
                    
                    if (global.party_member != -4)
                        msg_number = 5;
                    else
                        msg_number = 2;
                    
                    message[msg_number] = "* (Not enough space.)";
                    other.item_check = -1;
                }
            }
            else if (outcome == 2)
            {
                other.waiter = 0;
            }
            
            if (message_current == 5 && other.item_check != 0)
            {
                if (other.item_check == 1)
                    other.npc_flag = 1;
                else
                    audio_play_sound(snd_fail, 1, 0);
                
                other.item_check = 0;
                other.waiter = 0;
            }
        }
    }
    else
    {
        scr_text();
        
        with (msg)
            message[0] = "* (Nothing inside the#  refrigerator seems useful.)";
        
        waiter = 0;
    }
}
