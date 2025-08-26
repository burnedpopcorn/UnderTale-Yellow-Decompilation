if (live_call())
    return global.live_result;

event_inherited();

if (interact)
{
    if (global.route == 3)
    {
        if (global.hotland_flag[9] >= 3)
        {
            if (!instance_exists(obj_dialogue_narrator))
            {
                var narrator = instance_create_depth(0, 0, -100, obj_dialogue_narrator);
                
                with (narrator)
                    message[0] = "* (Not of interest.)";
            }
            
            exit;
        }
    }
    
    waiter = 1;
}

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
            message[0] = "* (You dig around the bin and#  find a bottle of Sizzlin'#  Soda.)\t";
            message[1] = "* (Take it?)";
            
            if (outcome == 1)
            {
                if (global.party_member != -4)
                {
                    sndfnt_array[2] = snd_talk_martlet;
                    message[2] = "* Do humans often eat#  from the garbage?";
                    message[3] = "* Shoot, I coulda left a#  trash bag out in Snowdin#  as a lure.";
                    message[4] = "* I'm only joking, of#  course!";
                    message[5] = "* I can't judge anyone's#  culinary preferences#  after today...";
                    prt[2] = spr_martlet_head_confused;
                    prt[3] = spr_martlet_head_suspiciouser;
                    prt[4] = spr_martlet_head_melancholic;
                    prt[5] = spr_martlet_head_sad;
                    sndfnt_array[6] = snd_talk_default;
                }
                
                if (scr_item("Adult Soda"))
                {
                    var msg_number;
                    
                    if (global.party_member != -4)
                        msg_number = 6;
                    else
                        msg_number = 2;
                    
                    message[msg_number] = "* (You got some Adult Soda!)";
                    other.item_check = 1;
                }
                else
                {
                    var msg_number;
                    
                    if (global.party_member != -4)
                        msg_number = 6;
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
            
            show_debug_message(message_current);
            
            if ((message_current == 6 || (message_current == 2 && global.party_member == -4)) && other.item_check != 0)
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
            message[0] = "* (Nothing of use here.)";
        
        waiter = 0;
    }
}
