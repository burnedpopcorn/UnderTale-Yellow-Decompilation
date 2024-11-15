var actor_starlo;

actor_starlo = 1169;

switch (scene)
{
    case 0:
        cutscene_player_interact(actor_starlo);
        break;
    
    case 1:
        scr_cutscene_start();
        cutscene_wait(2);
        break;
    
    case 2:
        cutscene_npc_direction(actor_starlo, "up");
        break;
    
    case 3:
        cutscene_wait(2);
        break;
    
    case 4:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* This is really bad.";
            message[1] = "* I'm a fake test Starlo.";
            message[2] = "* But I won't leave#  it this way!";
            message[3] = "* (It doesn't have to be this way.)";
            prt[0] = 406;
            prt[1] = 426;
            prt[2] = 422;
            sndfnt_array[0] = 107;
            sndfnt_array[3] = 391;
            talker[0] = actor_starlo;
            talker[3] = -4;
        }
        
        break;
    
    case 6:
        cutscene_wait(2);
        break;
    
    case 7:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, actor_starlo.y + 40, 2, "y", "down", 1031);
        break;
    
    case 8:
        cutscene_wait(3);
        break;
    
    case 9:
        cutscene_music_start(176, 300);
        break;
    
    case 10:
        cutscene_wait(2);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* A";
            prt[0] = 417;
            sndfnt_array[0] = 107;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 12:
        scr_cutscene_end();
        break;
}
