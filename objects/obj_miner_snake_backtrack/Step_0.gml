event_inherited();

if (interact)
{
    is_talking = 1;
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I'm famished.\t";
                message[1] = "* 'Boutta yomp on some rocks!";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
                message[0] = "* I hope they don't dock pay for#  eating the workplace...";
            
            break;
    }
}

if (is_talking == 1)
    sprite_index = spr_miner_snake_talk;
else
    sprite_index = spr_miner_snake;
