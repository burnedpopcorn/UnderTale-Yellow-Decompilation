event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                color = true;
                col_modif[0] = 16776960;
                message[0] = "* How goes it, lil fella?";
                message[1] = "* Sorry, but we're on a station#  break at the moment.";
                message[2] = "* What's broadcasting in the#  meantime?";
                message[3] = "* Why my face of course!";
                message_col[0][0] = "* How goes it, lil fella?";
                message_col[1][0] = "* Sorry, but we're on a station#  break at the moment.";
                message_col[2][0] = "* What's broadcasting in the#  meantime?";
                message_col[3][0] = "* Why my face of course!";
                message[4] = "* Ugh, this break can't end soon#  enough!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                color = true;
                col_modif[0] = 16776960;
                message[0] = "* When can I play a movie I#  like?";
                message[1] = "* Your movies go against the#  very nature of television!";
                message[2] = "* Gratuitous violence... heavy#  cursing... a secret third#  thing...";
                message_col[1][0] = "* Your movies go against the#  very nature of television!";
                message_col[2][0] = "* Gratuitous violence... heavy#  cursing... a secret third#  thing...";
                message[3] = "* Third thing?";
                message[4] = "* Oh you mean";
                message[5] = "* Nuh-uh-uh! Off limits!!";
                message[6] = "* We can only host mild cursing#  with censored/and or cartoon#  violence.";
                message[7] = "* TV-14 at worst!";
                message_col[5][0] = "* Nuh-uh-uh! Off limits!!";
                message_col[6][0] = "* We can only host mild cursing#  with censored/and or cartoon#  violence.";
                message_col[7][0] = "* TV-14 at worst!";
                message[8] = "* Yeeeah, but that's not gonna#  stop anybody, now is it?";
            }
            
            break;
        
        case 2:
            with (msg)
            {
                color = true;
                col_modif[0] = 16776960;
                message[0] = "* We hope we've entertained you,#  fella!";
                message[1] = "* Television is a wonderful#  invention!";
                message[2] = "* It's even better when you sit#  inches from the screen with#  your eyes WIDE open!";
                message_col[0][0] = "* We hope we've entertained you,#  fella!";
                message_col[1][0] = "* Television is a wonderful#  invention!";
                message_col[2][0] = "* It's even better when you sit#  inches from the screen with#  your eyes WIDE open!";
                message[3] = "* What? No! Don't do that, kid.#  Don't listen to her.";
                message[4] = "* Yes! Destroy your eyesight!!";
                message[5] = "* Your lenses should thicken#  with every exam!!!";
                message_col[4][0] = "* Yes! Destroy your eyesight!!";
                message_col[5][0] = "* Your lenses should thicken#  with every exam!!!";
                message[6] = "* You can't just say these kinds#  of things to kids!";
                message[7] = "* (Shut your flap, Vis! I'm#  running an optometrist ad!)";
                message_col[7][0] = "* (Shut your flap, Vis! I'm#  running an optometrist ad!)";
                message[8] = "* That doesn't make it better!!!";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                color = true;
                col_modif[0] = 16776960;
                message[0] = "* We'll be back after these#  messages!";
                message_col[0][0] = "* We'll be back after these#  messages!";
                message[1] = "* Man, I hope not.";
            }
            
            break;
    }
}

if (is_talking == 1 && npc_flag == 1)
{
    if (obj_dialogue.message_current == 4)
        obj_dialogue.message_timer = 15;
    else
        obj_dialogue.message_timer = -1;
    
    if (obj_dialogue.message_current == 5)
        npc_flag += 1;
}
