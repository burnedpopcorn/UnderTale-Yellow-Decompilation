switch (scene)
{
    case 0:
        if (obj_pl.x < 340)
        {
            scr_cutscene_start();
            scr_audio_fade_out(obj_radio.current_song, 750);
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(1168, 304, obj_player_npc.y, 3, "x", "up");
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 111;
            message[0] = "* ThIS D_OR iS SEALED SO.. .";
            message[1] = "* LeAVE US Al0NE, PLeASE.";
            message[2] = "* I KN0W W_WHY YOU ARE heRE.";
            
            if (global.route == 3)
            {
                message[3] = "* BuT I CAN EXP;;LAIN.";
            }
            else
            {
                message[3] = "* TRY ALL yOU LIKE BUT tHE#  STEAMWORKS... .";
                message[4] = "* ALL oF US.";
                message[5] = "* WE ARe SURVIV0RS.";
            }
        }
        
        break;
    
    case 4:
        if (global.route == 3)
            cutscene_npc_action_sprite(1168, 3313, 1, false, 0, 231, 8);
        else
            cutscene_advance(7);
        
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 111;
            message[0] = "* BRuTE FoRCE_WON'T S0LVE#  ANyTHING.";
            message[1] = "* TRY ALL yOU LIKE BUT tHE#  STEAMWORKS... .";
            message[2] = "* ALL oF US.";
            message[3] = "* WE ARe SURVIV0RS.";
        }
        
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        cutscene_npc_walk(1168, 304, 140, 2, "y", "up");
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        obj_player_npc.npc_direction = "down";
        instance_create(304, 168, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise_up;
        obj_flowey_npc.image_speed = 1;
        obj_flowey_npc.npc_direction = "up";
        cutscene_advance();
        break;
    
    case 11:
        if (obj_flowey_npc.image_index >= (obj_flowey_npc.image_number - 1))
        {
            obj_flowey_npc.image_speed = 0;
            obj_flowey_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* He's gone.";
            prt[0] = 353;
        }
        
        break;
    
    case 13:
        cutscene_wait(1);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* So what's the plan now?";
            message[1] = "* This door's beyond my#  abilities so don't look#  at me.";
            prt[0] = 353;
            prt[1] = 3692;
        }
        
        break;
    
    case 15:
        cutscene_wait(0.2);
        break;
    
    case 16:
        cutscene_npc_direction(1168, "right");
        break;
    
    case 17:
        cutscene_wait(0.2);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Already checked it.";
            message[1] = "* The factory wing,#  right?";
            message[2] = "* Yeah. Place has more#  locks than a hair salon.";
            prt[0] = 353;
            prt[1] = 348;
            prt[2] = 347;
            
            if (global.route != 3)
            {
                message[3] = "* Okay let's see...";
                prt[3] = 348;
                
                if (message_current == 0)
                    obj_player_npc.npc_direction = "down";
            }
        }
        
        break;
    
    case 19:
        if (global.route == 3)
            cutscene_npc_direction(1168, "down");
        else
            cutscene_advance(22);
        
        break;
    
    case 20:
        cutscene_wait(0.5);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* It's called \"humor.\"#  Don't suppose you've#  heard of it.";
            message[1] = "* (Geez, and I thought I#  was soulless.)";
            message[2] = "* Sigh...";
            message[3] = "* Okay let's see...";
            prt[0] = 3640;
            prt[1] = 3692;
            prt[2] = 353;
            prt[3] = 352;
        }
        
        break;
    
    case 22:
        cutscene_npc_direction(3194, "left");
        break;
    
    case 23:
        cutscene_wait(0.5);
        break;
    
    case 24:
        cutscene_npc_direction(3194, "right");
        break;
    
    case 25:
        cutscene_wait(0.5);
        break;
    
    case 26:
        cutscene_npc_direction(3194, "up");
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Well, there's certainly#  a lot of junk lying#  around.";
            message[1] = "* I know you're on a#  strict \"shoot don't#  think\" regiment but...";
            message[2] = "* For once, you're gonna#  have to get creative.";
            message[3] = "* Shocking. Distressing,#  even. I know.";
            message[4] = "* But I've seen you work#  your brain before so... ";
            message[5] = "* Give it a shot.";
            prt[0] = 347;
            prt[1] = 348;
            prt[2] = 357;
            prt[3] = 347;
            prt[4] = 348;
            prt[5] = 349;
            
            if (message_current == 5)
            {
                if (global.route == 3)
                {
                    skippable = false;
                    message_timer = 45;
                }
            }
            
            if (global.route != 3)
            {
                message[5] = "* Get to it!";
                prt[5] = 348;
            }
        }
        
        break;
    
    case 28:
        if (global.route == 3)
            cutscene_npc_walk_relative(1168, 0, 10, 1, "y", "down");
        else
            cutscene_advance(30);
        
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Gotta go!";
            prt[0] = 347;
        }
        
        break;
    
    case 30:
        if (cutscene_npc_action_sprite_reverse(3194, 242, 0.25, true, 0))
        {
            scr_radio_restart();
            global.sworks_flag[25] = 1;
            instance_destroy(obj_flowey_npc);
            cutscene_end();
        }
        
        break;
}
