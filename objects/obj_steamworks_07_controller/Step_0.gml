switch (scene)
{
    case 0:
        if (obj_pl.x < 620)
        {
            scr_cutscene_start();
            global.sworks_flag[8] = 1;
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_follower_into_actor();
        global.party_member = -4;
        break;
    
    case 2:
        cutscene_npc_direction(1161, "left");
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* What luck.";
            message[1] = "* Turn the power on and#  the whole facility goes#  insane!";
            message[2] = "* Since you're now the#  leader and all... ";
            message[3] = "* How'bout you run ahead#  and turn this steam off?";
            message[4] = "* I think I see a switch#  over there so no#  problem, right?";
            message[5] = "* Don't worry, I'll catch#  up.";
            prt[0] = 382;
            prt[1] = 382;
            prt[2] = 377;
            prt[3] = 370;
            prt[4] = 372;
            prt[5] = 395;
        }
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_npc_walk(actor_follower, 590, 100, 3, "x", "down");
        break;
    
    case 6:
        scr_cutscene_end();
        cutscene_advance();
        break;
    
    case 7:
        if (obj_ceroba_npc.interact == true)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* I know you're skilled#  enough for this small#  task.";
                message[1] = "* Go on.";
                prt[0] = 395;
                prt[1] = 372;
            }
        }
        
        if (obj_pl.x <= 100)
            cutscene_advance();
        
        break;
    
    case 8:
        scr_cutscene_start();
        cutscene_advance();
        break;
    
    case 9:
        cutscene_sfx_play(378, 1);
        break;
    
    case 10:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 11:
        cutscene_npc_walk(1168, 80, 105, 3, "x", "up");
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        with (obj_steamworks_07_lever)
        {
            image_speed = 1/3;
            audio_play_sound(snd_switch, 1, 0);
        }
        
        with (obj_steamworks_steam_blaster)
            instance_destroy();
        
        cutscene_advance();
        break;
    
    case 14:
        if (obj_steamworks_07_lever.image_speed == 0)
            cutscene_advance();
        
        break;
    
    case 15:
        cutscene_wait(1);
        break;
    
    case 16:
        cutscene_npc_direction(1168, "right");
        break;
    
    case 17:
        instance_destroy(obj_player_npc);
        cutscene_advance();
        break;
    
    case 18:
        obj_ceroba_npc.x = 350;
        obj_ceroba_npc.y = obj_pl.y;
        cutscene_advance();
        break;
    
    case 19:
        cutscene_npc_set_sprites(1161, 81, 80, 78, 79, 61, 65, 60, 63);
        break;
    
    case 20:
        cutscene_npc_walk(1161, obj_pl.x + 20, obj_pl.y, 4, "x", "left");
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* See? No sweat.";
            prt[0] = 395;
        }
        
        break;
    
    case 22:
        obj_pl.direction = 180;
        global.party_member = 1171;
        actor_follower = 1161;
        cutscene_actor_into_follower();
        break;
    
    case 23:
        global.sworks_flag[8] = 2;
        cutscene_end();
        break;
}
