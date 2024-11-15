event_inherited();

if (interact)
{
    can_talk = true;
    is_talking = true;
}

if (can_talk == true)
{
    scr_text();
    
    with (msg)
    {
        talker[0] = other.id;
        
        if (other.npc_flag >= 3)
        {
            message[0] = "* I am very sorry but we are out#  of stock!";
            message[1] = "* I'll make sure to bake a fresh#  batch as soon as I can!";
            other.can_talk = false;
            exit;
        }
        
        message[0] = "* Bake sale! Bake sale! ";
        message[1] = "* Come eat food made by spiders,#  for spiders, of spiders!";
        message[2] = "* All proceeds go to spiders in#  need!";
        message[3] = "* Will you buy a Spider Donut for#  7G?";
        ch_msg = 3;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            other.is_talking = false;
            talker[5] = other.id;
            
            if (global.player_gold < 7)
            {
                talker[4] = other.id;
                message[4] = "* It seems this transaction#  can't be completed.";
                message[5] = "* Come back when you're ready!";
                audio_play_sound(snd_fail, 1, 0);
            }
            else if (scr_item("Spider Donut"))
            {
                message[4] = "* (You got a Spider Donut!)";
                message[5] = "* You are most gracious! Have a#  nice day!";
                other.npc_flag += 1;
                global.player_gold -= 7;
            }
            else
            {
                talker[4] = other.id;
                message[4] = "* It seems this transaction#  can't be completed.";
                message[5] = "* Come back when you're ready!";
                audio_play_sound(snd_fail, 1, 0);
            }
            
            other.can_talk = false;
        }
        
        if (outcome == 2)
            other.can_talk = false;
    }
}
