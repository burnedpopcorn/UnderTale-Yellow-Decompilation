var actor_starlo, actor_ceroba;

actor_starlo = 1169;
actor_ceroba = 1161;

switch (scene)
{
    case 0:
        scr_cutscene_start();
        cutscene_wait(2);
        break;
    
    case 1:
        cutscene_music_start(176);
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* I'm really sorry about#  the pops Starlo.";
            message[1] = "* When I see them...#  It's like a demon takes#  over.";
            prt[0] = 375;
            prt[1] = 375;
            sndfnt_array[0] = 108;
            talker[0] = actor_ceroba;
            position = 0;
        }
        
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        cutscene_npc_direction(actor_starlo, "right");
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Look at it from#  my point of view.";
            message[1] = "* You're looking forward#  to some pops after a#  long hard work day...";
            message[2] = "* Only to come home#  just to see...";
            message[3] = "* Just to see...";
            prt[0] = 419;
            prt[1] = 419;
            prt[2] = 406;
            prt[3] = 406;
            sndfnt_array[0] = 107;
            talker[0] = actor_starlo;
            position = 0;
        }
        
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_direction(actor_starlo, "left");
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Argh!";
            message[1] = "* I need time...";
            prt[0] = 406;
            prt[1] = 406;
            sndfnt_array[0] = 107;
            talker[0] = actor_starlo;
            position = 0;
        }
        
        break;
    
    case 9:
        cutscene_npc_walk(actor_starlo, actor_starlo.x - 100, actor_starlo.y, 4, "x", "left");
        break;
    
    case 10:
        cutscene_wait(3);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Loool worth it.";
            message[1] = "* Those pops were#  delicious.";
            prt[0] = 375;
            prt[1] = 375;
            sndfnt_array[0] = 108;
            talker[0] = actor_ceroba;
            position = 0;
        }
        
        break;
    
    case 12:
        cutscene_wait(3);
        break;
    
    case 13:
        cutscene_npc_direction(actor_ceroba, "down");
        break;
    
    case 14:
        cutscene_music_start(162);
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* What are YOU looking#  at?!";
            prt[0] = 375;
            sndfnt_array[0] = 108;
            talker[0] = actor_ceroba;
            position = 0;
        }
        
        break;
}
