if (global.sworks_flag[0] == 0)
{
    switch (scene)
    {
        case 0:
            cutscene_wait(1);
            break;
        
        case 1:
            cutscene_npc_walk_relative(actor_clover, 0, -30, 1, "y", "up");
            break;
        
        case 2:
            cutscene_wait(0.5);
            break;
        
        case 3:
            cutscene_instance_create(actor_clover.x, actor_clover.y - 50, obj_flowey_npc);
            obj_flowey_npc.action_sprite = true;
            obj_flowey_npc.sprite_index = spr_floweyrise;
            obj_flowey_npc.image_speed = 0.2;
            break;
        
        case 4:
            if (obj_flowey_npc.image_index >= (obj_flowey_npc.image_number - 1))
            {
                obj_flowey_npc.npc_direction = "down";
                obj_flowey_npc.action_sprite = false;
                cutscene_advance();
            }
            
            break;
        
        case 5:
            cutscene_wait(0.25);
            break;
        
        case 6:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* Howdy again!";
                message[1] = "* Golly, this area sure#  is grim!";
                message[2] = "* Doesn't look like#  anyone's been around for#  years.";
                message[3] = "* This machine looks#  mighty important though!";
                message[4] = "* Snoop around and see#  what you can find!";
                message[5] = "* Talk to you soon!";
                prt[0] = 348;
                prt[1] = 347;
                prt[2] = 348;
                prt[3] = 347;
                prt[4] = 348;
                prt[5] = 348;
                
                if (message_current == 3)
                    obj_flowey_npc.npc_direction = "up";
                
                if (message_current == 4)
                    obj_flowey_npc.npc_direction = "down";
            }
            
            break;
        
        case 7:
            cutscene_npc_action_sprite(3194, 245, 0.25, true, 0);
            break;
        
        case 8:
            instance_destroy(obj_flowey_npc);
            cutscene_end();
            global.sworks_flag[0] = 1;
            break;
    }
}

if (global.sworks_flag[1] == 3)
{
    switch (scene)
    {
        case 0:
            __view_set(e__VW.Object, 0, obj_steamworks_04_generator);
            obj_steamworks_04_generator.image_speed = 0;
            cutscene_advance();
            break;
        
        case 1:
            cutscene_wait(2);
            break;
        
        case 2:
            obj_steamworks_04_generator.image_speed = 1/3;
            audio_play_sound(snd_generator_start, 1, 0);
            cutscene_advance();
            break;
        
        case 3:
            cutscene_wait(1.5);
            break;
        
        case 4:
            cutscene_change_room(152, 655, 170, 0.05);
            break;
    }
}
