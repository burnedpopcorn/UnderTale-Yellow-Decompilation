if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        instance_create_depth(320, 288, -100, obj_ending_flowey);
        cutscene_advance();
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        if (!instance_exists(obj_dialogue_flowey_ending))
        {
            instance_create(x, y, obj_dialogue_flowey_ending);
        }
        else if (global.dialogue_open == false)
        {
            cutscene_advance();
            exit;
        }
        else
        {
            with (obj_dialogue_flowey_ending)
            {
                sndfnt = sndfnt_flowey;
                talker[0] = obj_ending_flowey;
                message[0] = "Sigh...";
                message[1] = "Can't say I didn't see#that coming.";
                message[2] = "Still, my hopes were#high.";
                message[3] = "There's gotta be SOME#way to get what I need.";
                message[4] = "Clover's competent...#enough, but still...";
                message[5] = "Nothing ever works out#when it comes to them.";
                message[6] = "Hmm...";
                message[7] = "I could reset and try#my luck again...";
                message[8] = "Or...";
                message[9] = "I could accept what#I've been given and#wait.";
                message[10] = "The King is only one#SOUL away now.";
                message[11] = "It might be a good idea#to piggyback off the#next human instead.";
                message[12] = "But...";
                message[13] = "Who knows how long that#will take and even#worse,";
                message[14] = "If the next human would#be skilled enough to do#what Clover couldn't.";
                message[15] = "...";
                message[16] = "I need some time to#think it over.";
                message[17] = "This isn't the end.";
                prt[0] = spr_flowey_plain_side;
                prt[1] = spr_flowey_nice_side;
                prt[2] = spr_flowey_nice;
                prt[3] = spr_flowey_plain_side;
                prt[4] = spr_flowey_plain_side;
                prt[5] = spr_flowey_plain;
                prt[6] = spr_flowey_plain_side;
                prt[7] = spr_flowey_plain_side;
                prt[8] = spr_flowey_plain_side;
                prt[9] = spr_flowey_nice;
                prt[10] = spr_flowey_nice;
                prt[11] = spr_flowey_nice_side;
                prt[12] = spr_flowey_plain_side;
                prt[13] = spr_flowey_plain_side;
                prt[14] = spr_flowey_plain;
                prt[15] = spr_flowey_plain_side;
                prt[16] = spr_flowey_plain_side;
                prt[17] = spr_flowey_nice;
            }
        }
        
        break;
    
    case 3:
        if (obj_ending_flowey.sprite_index != spr_flowey_enter)
        {
            obj_ending_flowey.sprite_index = spr_flowey_enter;
            obj_ending_flowey.image_index = obj_ending_flowey.image_number - 1;
            obj_ending_flowey.image_speed = -0.25;
        }
        
        if (obj_ending_flowey.image_index <= 0)
        {
            instance_destroy(obj_ending_flowey);
            cutscene_advance();
        }
        
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        global.game_finished_pacifist_kill = true;
        scr_savegame_meta();
        game_end();
        break;
}
