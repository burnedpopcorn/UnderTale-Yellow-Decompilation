switch (scene)
{
    case 0:
        if (obj_pl.y < 350)
            cutscene_advance();
        
        break;
    
    case 1:
        cutscene_initialize();
        break;
    
    case 2:
        cutscene_camera_move(obj_pl.x, 280, 3);
        break;
    
    case 3:
        scr_radio_fade(0, 500);
        cutscene_advance();
        break;
    
    case 4:
        cutscene_follower_into_actor();
        actor_follower.npc_direction = "up";
        obj_pl.direction = 90;
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Oh, hey.";
            prt[0] = 370;
        }
        
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_walk(actor_follower, 290, 300, 3, "x", "up");
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* ...Hellooo?";
            prt[0] = 370;
        }
        
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        cutscene_npc_walk(actor_follower, 290, 260, 1, "x", "up");
        break;
    
    case 11:
        cutscene_wait(0.5);
        break;
    
    case 12:
        cutscene_npc_direction(actor_follower, "down");
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Rusted through.";
            prt[0] = 377;
            position = 0;
        }
        
        break;
    
    case 14:
        obj_ceroba_npc.npc_direction = "up";
        cutscene_wait(0.75);
        break;
    
    case 15:
        cutscene_advance();
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* The sign says \"If the#  receptionist is#  unreceptive...";
            message[1] = "* ...check with the robot#  control station three#  floors up.\" ";
            message[2] = "* Robot control#  station...";
            message[3] = "* Clover! Are you thinking#  what I'm thinking?";
            prt[0] = 370;
            prt[1] = 370;
            prt[2] = 393;
            prt[3] = 370;
            ch_msg = 3;
            ch[1] = "Axis?";
            ch[2] = "Uh...";
            position = 0;
            
            if (outcome == 1)
            {
                message[4] = "* Exactly.";
                prt[4] = 377;
            }
            else if (outcome == 2)
            {
                message[4] = "* You zoned out? Listen!";
                prt[4] = 368;
            }
            
            message[5] = "* If there's some sorta#  \"breaker box\" for all#  robots in the area...";
            message[6] = "* ...we can shut Axis down#  and get to Hotland#  as planned!";
            message[7] = "* It's worth an#  investigation at least.#  Let's go!";
            prt[5] = 377;
            prt[6] = 370;
            prt[7] = 377;
            
            if (message_current == 3)
                obj_ceroba_npc.npc_direction = "down";
        }
        
        break;
    
    case 17:
        cutscene_npc_walk(1161, obj_pl.x, obj_pl.y + 30, 3, "x", "up");
        break;
    
    case 18:
        cutscene_actor_into_follower();
        break;
    
    case 19:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
        break;
    
    case 20:
        cutscene_end();
        scr_radio_fade(1, 500);
        instance_destroy(obj_camera);
        camera_set_view_target(view_camera[0], 1031);
        global.sworks_flag[22] = 1;
        break;
}
