var actor_ceroba, actor_clover, message_last;

if (instance_exists(obj_ceroba_npc))
    actor_ceroba = 1161;

if (instance_exists(obj_player_npc))
    actor_clover = 1168;

switch (scene)
{
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* Hey! Clover!";
            prt[0] = 370;
        }
        
        break;
    
    case 19:
        cutscene_npc_direction(actor_clover, "down");
        break;
    
    case 20:
        cutscene_npc_walk(actor_ceroba, actor_clover.x, actor_clover.y + 40, 3, "x", "up");
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            ch_msg = 0;
            ch[1] = "No";
            ch[2] = "I'm sorry";
            talker[0] = actor_ceroba;
            message[0] = "* Have you seen Starlo?";
            prt[0] = 370;
            
            if (outcome == 1)
            {
                message[1] = "* Didn't think so...";
                prt[1] = 394;
            }
            
            if (outcome == 2)
            {
                message[1] = "* It wasn't your fault#  this happened. Don't#  apologize.";
                message[2] = "* I gotta find out where#  he went.";
                prt[1] = 377;
                prt[2] = 394;
            }
            
            if (outcome != 0)
            {
                message_last = array_length(message) - 1;
                message[message_last + 1] = "* I haven't seen him#  anywhere since the#  breakup.";
                message[message_last + 2] = "* That's the most upset#  he's been in quite some#  time. I'm worried.";
                message[message_last + 3] = "* ...";
                message[message_last + 4] = "* I'll speak to his#  family up ahead, maybe#  they know something.";
                message[message_last + 5] = "* See you later.";
                prt[message_last + 1] = 370;
                prt[message_last + 2] = 394;
                prt[message_last + 3] = 394;
                prt[message_last + 4] = 370;
                prt[message_last + 5] = 370;
            }
        }
        
        break;
    
    case 22:
        cutscene_npc_walk_relative(actor_clover, -40, 0, 3, "x", "right");
    
    case 23:
        cutscene_npc_walk(actor_ceroba, actor_ceroba.x, -40, 3, "y", "up");
        
        if (actor_ceroba.y < (actor_clover.y - 20))
            actor_clover.npc_direction = "up";
        
        break;
    
    case 24:
        cutscene_npc_walk_relative(actor_clover, 40, 0, 3, "x", "up");
    
    case 25:
        cutscene_wait(1);
        break;
    
    case 26:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* Clover! Clover!";
            prt[0] = 318;
        }
        
        actor_clover.npc_direction = "down";
        break;
    
    case 27:
        cutscene_instance_create(obj_pl.x, __view_get(e__VW.YView, 0) + __view_get(e__VW.WView, 0) + 50, obj_martlet_npc);
        break;
    
    case 28:
        cutscene_npc_walk(1164, 160, 220, 3, "x", "up");
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* Was that Ceroba?";
            message[1] = "* I wonder where she's#  off to in such a hurry?";
            message[2] = "* -Oh yeah, hi!";
            message[3] = "* So I have good news and#  bad news.";
            message[4] = "* I'll start with the#  good:";
            message[5] = "* Ceroba, an old#  acquaintance of mine,#  freed me!";
            message[6] = "* I can see that you two#  have already met.";
            message[7] = "* She knows I won't tell#  ASGORE about this, so no#  worries!";
            message[8] = "* Now that that's taken#  care of... the bad news.";
            message[9] = "* I'm about to go back on#  my word, sadly.";
            message[10] = "* I know I JUST said I#  wouldn't leave your side#  but then... ya know... \t";
            message[11] = "* ...This crazy detour#  happened.";
            message[12] = "* I also realize I threw#  my job to the wind to#  travel with you but...";
            message[13] = "* Since the imprisonment#  took up so much time, I#  have to go back.";
            message[14] = "* If I don't at LEAST#  clock in,";
            message[15] = "* the Royal Guard#  will grow suspicious!";
            message[16] = "* Plus, Ava is totalled.#  It was their property.";
            message[17] = "* I'll only be gone for a#  moment to fix my#  mistakes!";
            message[18] = "* Trust me, this will#  help you in the long#  run!";
            message[19] = "* And I know you're tough#  enough to handle#  yourself.\t";
            message[20] = "* I'll send ya a message#  where to meet back up,#  alright?";
            message[21] = "* Again, I'm#  so-so-so-SO sorry about#  this but I'll cya later!";
            prt[0] = 311;
            prt[1] = 324;
            prt[2] = 333;
            prt[3] = 320;
            prt[4] = 321;
            prt[5] = 318;
            prt[6] = 318;
            prt[7] = 328;
            prt[8] = 317;
            prt[9] = 320;
            prt[10] = 333;
            prt[11] = 321;
            prt[12] = 329;
            prt[13] = 321;
            prt[14] = 321;
            prt[15] = 321;
            prt[16] = 323;
            prt[17] = 321;
            prt[18] = 328;
            prt[19] = 328;
            prt[20] = 312;
            prt[21] = 323;
            position = 1;
        }
        
        break;
    
    case 30:
        cutscene_npc_walk(1164, obj_martlet_npc.x, __view_get(e__VW.YView, 0) + __view_get(e__VW.WView, 0) + 50, 4, "x", "down");
        break;
    
    case 31:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        break;
    
    case 32:
        scr_cutscene_end();
        camera_set_view_target(view_camera[0], 1031);
        global.dunes_flag[39] = 1;
        ds_list_clear(global.encounter_list);
        scene = -1;
        instance_destroy(actor_clover);
        instance_destroy(obj_martlet_npc);
        instance_destroy(actor_ceroba);
        instance_destroy();
        break;
}
