var actor_toriel;

actor_toriel = 1159;

switch (scene)
{
    case 0:
        cutscene_wait(0.25);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_toriel;
            message[0] = "* The RUINS are full of#  puzzles.";
            message[1] = "* Ancient fusions between#  diversions and doorkeys.";
            message[2] = "* They must be solved in#  order to move from room#  to room.";
            message[3] = "* Allow me to demonstrate.";
            prt[0] = 343;
            prt[1] = 343;
            prt[2] = 343;
            prt[3] = 343;
        }
        
        break;
    
    case 2:
        cutscene_npc_walk(actor_toriel, 233, 124, 3, "y", "up", "nothing", 184, 84, 208, 70);
        break;
    
    case 3:
        cutscene_sfx_play(379, 1);
        obj_switch1.image_index = 1;
        instance_destroy(obj_door);
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        cutscene_npc_walk(actor_toriel, 144, 124, 3, "x", "down", "nothing");
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_toriel;
            message[0] = "* We are free to proceed #  now. ";
            message[1] = "* Follow me, my child.#* There are more puzzles#  ahead.";
            prt[0] = 343;
            prt[1] = 343;
        }
        
        break;
    
    case 7:
        global.ruins_flag[2] = 1;
        scr_cutscene_end();
        cutscene_advance();
        break;
    
    case 8:
        cutscene_npc_walk(actor_toriel, 144, 60, 3 + (obj_pl.is_sprinting * 2), "x", "up", "nothing");
        break;
    
    case 9:
        with (actor_toriel)
        {
            image_alpha -= 0.1;
            
            if (image_alpha < 0)
                instance_destroy();
        }
}
