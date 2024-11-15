if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        scr_cutscene_start();
        obj_pl.x = 680;
        obj_pl.y = 140;
        obj_pl.direction = 90;
        cutscene_camera_freeze(700, 140);
        break;
    
    case 1:
        cutscene_wait(1.5);
        break;
    
    case 2:
        cutscene_instance_create(obj_pl.x + 20, obj_pl.y, obj_flowey_npc);
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.npc_direction = "up";
        obj_flowey_npc.sprite_index = spr_floweyrise_up;
        obj_flowey_npc.image_speed = 1;
        break;
    
    case 3:
        with (obj_flowey_npc)
        {
            if (image_index >= (image_number - 1))
            {
                action_sprite = false;
                other.scene += 1;
            }
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
            message[0] = "* ...";
            message[1] = "* ...";
            message[2] = "* What... was that?";
            message[3] = "* Clover... what...";
            message[4] = "* Um, okay. No, this is#  fine.";
            message[5] = "* This can be very useful#  against the Ki";
            prt[0] = 352;
            prt[1] = 353;
            prt[2] = 352;
            prt[3] = 352;
            prt[4] = 353;
            prt[5] = 348;
            
            if (message_current == 5)
            {
                skippable = false;
                message_timer = 10;
            }
        }
        
        break;
    
    case 6:
        obj_flowey_npc.npc_direction = "left";
        cutscene_npc_walk(1168, 480, 140, 2, "x", "left");
        
        if (obj_player_npc.x < 580)
            cutscene_advance(7);
        
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Wait, where are you#  going?";
            message[1] = "* I'm still talking!";
            prt[0] = 352;
            prt[1] = 351;
        }
        
        break;
    
    case 8:
        if (cutscene_npc_action_sprite(3194, 245, 0.2, false))
            instance_destroy(obj_flowey_npc);
        
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        global.sworks_flag[31] = 4;
        cutscene_change_room(206, 630, 170, 0.05);
        obj_pl.direction = 180;
        break;
}
