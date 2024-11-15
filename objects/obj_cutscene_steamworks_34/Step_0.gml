var flowey_npc;

if (global.sworks_flag[29] == 0)
{
    if (obj_pl.x < 980)
    {
        instance_create_depth(obj_pl.x + 10, 168, obj_pl.depth, obj_steamworks_34_flowey_disappear);
        global.sworks_flag[29] = 1;
    }
}

switch (scene)
{
    case 0:
        if (obj_pl.x <= (obj_determination.x + 15))
        {
            cutscene_advance();
            obj_determination.image_alpha = 0;
            flowey_npc = instance_create(obj_determination.x, obj_determination.y, obj_flowey_npc);
            flowey_npc.action_sprite = true;
            flowey_npc.sprite_index = spr_floweyrise;
            flowey_npc.image_speed = 0.2;
            scr_cutscene_start();
            obj_pl.direction = 90;
        }
        
        break;
    
    case 1:
        if (obj_flowey_npc.image_index >= (obj_flowey_npc.image_number - 1))
        {
            obj_flowey_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Howdy!";
            message[1] = "* Looks like things are#  heating up!";
            message[2] = "* Literally, that is.";
            message[3] = "* Since you shut the bots#  down, it should be an#  easy stroll to the exit.";
            prt[0] = 348;
            prt[1] = 347;
            prt[2] = 353;
            prt[3] = 348;
            
            if (global.dunes_flag[51] == 2)
            {
                message[4] = "* Good luck, Clover.";
                prt[4] = 348;
            }
            else
            {
                message[4] = "* But just in case, I'd#  like to give you a#  little gift...";
                message[5] = "* From your best friend.";
                prt[4] = 348;
                prt[5] = 3251;
            }
        }
        
        break;
    
    case 3:
        if (global.dunes_flag[51] == 2)
        {
            cutscene_advance(6);
        }
        else
        {
            instance_create_depth(370, 124, 0, obj_steamworks_34_pellets);
            cutscene_advance();
        }
        
        break;
    
    case 4:
        cutscene_wait(1.5);
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* I think it's time you#  try your hand at#  wielding the pellets.";
            message[1] = "* Sure, you could use#  rubber, silver, nails,#  whatever.";
            message[2] = "* But these are#  the real deal.";
            message[3] = "* It's fully up to you#  but I just wanted to let#  you know...";
            message[4] = "* ...Our partnership#  means a lot to me.";
            message[5] = "* Good luck, Clover.";
            prt[0] = 348;
            prt[1] = 349;
            prt[2] = 349;
            prt[3] = 347;
            prt[4] = 3251;
            prt[5] = 348;
        }
        
        break;
    
    case 6:
        scr_determine_save_area();
        global.sworks_flag[29] = 2;
        instance_create(__view_get(e__VW.XView, 0) + 160, __view_get(e__VW.YView, obj_quote_battle_ceroba_outro_4) + 120, obj_savebox);
        cutscene_advance();
        break;
    
    case 7:
        if (!instance_exists(obj_savebox))
            cutscene_advance();
        
        break;
    
    case 8:
        cutscene_npc_action_sprite(3194, 245, 0.2, true, 0);
        break;
    
    case 9:
        instance_destroy(obj_flowey_npc);
        obj_determination.image_alpha = 1;
        cutscene_end();
        break;
}
