event_inherited();

if (interact == true)
    is_active = true;

if (npc_flag == 3 && sprite_index != spr_npc_marlyn_asleep)
    sprite_index = spr_npc_marlyn_asleep;

if (is_active == true)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                ch_msg = 3;
                ch[1] = "Yes";
                ch[2] = "No";
                talker[0] = other.object_index;
                message[0] = "* Haha... hah...";
                message[1] = "* The doc just replaced one of my#  pincers.";
                message[2] = "* I feel funny... haha... I feel#  HILARIOUS!";
                message[3] = "* Wanna hear a joke?";
                
                if (outcome == 1)
                {
                    message[4] = "* OK, so there's this stone#  pillar, right?";
                    message[5] = "* It ain't your everyday pillar,#  though. This one has a drawing#  of a cat on it.";
                    message[6] = "* So... haha... does that make it#  a CATerpillar? HAHA!!";
                    message[7] = "* Man, I'm good!";
                }
                
                if (outcome == 2)
                    message[4] = "* Bug off then, haha hah...";
            }
            
            if (!global.dialogue_open)
                npc_flag++;
            
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Haha... I'm a bed bug. Get it?#  Cause I'm in bed.";
                message[1] = "* I can see you holding back a#  smile, hah...";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Hold on, I need to think of#  more material.";
                message[1] = "* In fact I'm getting... a#  little..";
            }
            
            if (!global.dialogue_open)
            {
                npc_flag++;
                sprite_index = spr_npc_marlyn_asleep;
            }
            
            break;
        
        case 3:
            with (msg)
                message[0] = "* ZzzzzzzZZZZ";
            
            break;
    }
}

if (is_active == true && !global.dialogue_open)
    is_active = false;
