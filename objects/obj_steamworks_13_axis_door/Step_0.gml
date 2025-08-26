with (obj_robuild_parent)
{
    if (robot_item_is_carried == true)
        exit;
}

if (global.sworks_flag[6] == 0)
{
    switch (scene)
    {
        case 0:
            if (place_meeting(x, y, obj_pl))
            {
                obj_pl.direction = 180;
                scr_cutscene_start();
                cutscene_advance();
                
                if (global.route == 2)
                    obj_ceroba_npc.npc_direction = "right";
            }
            
            break;
        
        case 1:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = obj_ceroba_npc;
                message[0] = "* Hold on! That's far too#  easy of an escape.";
                message[1] = "* Don't be reckless,#  we'll find another way#  out.";
                prt[0] = spr_portrait_ceroba_nervous;
                prt[1] = spr_portrait_ceroba_closed_eyes;
            }
            
            break;
        
        case 2:
            obj_ceroba_npc.npc_direction = "down";
            cutscene_advance();
            break;
        
        case 3:
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            break;
        
        case 4:
            cutscene_npc_walk_relative(obj_player_npc, 0, 40, 3, "y", "down");
            break;
        
        case 5:
            with (obj_player_npc)
            {
                if (!place_free(x, y))
                {
                    other.scene = 4;
                    exit;
                }
            }
            
            instance_destroy(obj_player_npc);
            scr_cutscene_end();
            cutscene_advance();
            break;
        
        case 6:
            if (place_meeting(x, y, obj_pl))
            {
                scr_cutscene_start();
                cutscene_change_room(rm_steamworks_13b, 160, 280, 0.1);
            }
            
            break;
    }
}

if (global.sworks_flag[6] == 1)
{
    switch (scene)
    {
        case 0:
            cutscene_wait(1);
            break;
        
        case 1:
            if (global.route != 2)
            {
                global.sworks_flag[6] = 2;
                scr_cutscene_end();
                scene = 0;
                exit;
            }
            
            obj_ceroba_npc.npc_direction_hold = "down";
            obj_ceroba_npc.npc_direction = "right";
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = obj_ceroba_npc;
                message[0] = "* Wow, he caught you.#  Shocker.";
                prt[0] = spr_portrait_ceroba_unamused;
            }
            
            break;
        
        case 2:
            global.sworks_flag[6] = 2;
            scr_cutscene_end();
            scene = 0;
            break;
    }
}

if (global.sworks_flag[6] == 2)
{
    if (place_meeting(x, y, obj_pl))
    {
        scr_cutscene_start();
        cutscene_change_room(rm_steamworks_13b, 160, 280, 0.1);
    }
}

if (global.sworks_flag[6] == 3)
{
    switch (scene)
    {
        case 0:
            cutscene_wait(1);
            break;
        
        case 1:
            if (global.route != 2)
            {
                global.sworks_flag[6] = 4;
                scr_cutscene_end();
                scene = 0;
                exit;
            }
            
            obj_ceroba_npc.npc_direction_hold = "down";
            obj_ceroba_npc.npc_direction = "right";
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = obj_ceroba_npc;
                message[0] = "* What are you trying to#  accomplish?";
                message[1] = "* Come on, stick to the#  plan!";
                prt[0] = spr_portrait_ceroba_angry;
                prt[1] = spr_portrait_ceroba_irked;
            }
            
            break;
        
        case 2:
            global.sworks_flag[6] = 4;
            scr_cutscene_end();
            scene = 0;
            break;
    }
}

if (global.sworks_flag[6] == 4)
{
    switch (scene)
    {
        case 0:
            if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
            {
                scr_cutscene_start();
                cutscene_advance();
            }
            
            break;
        
        case 1:
            cutscene_sfx_play(snd_fail, 1);
            break;
        
        case 2:
            cutscene_wait(1);
            break;
        
        case 3:
            cutscene_dialogue();
            
            with (msg)
                message[0] = "* (The door is locked.)";
            
            break;
        
        case 4:
            cutscene_advance();
            break;
        
        case 5:
            if (global.party_member != -4)
            {
                cutscene_advance(7);
                exit;
            }
            
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            break;
        
        case 6:
            cutscene_npc_walk_relative(obj_player_npc, 0, 40, 3, "y", "down");
            break;
        
        case 7:
            with (obj_player_npc)
            {
                if (!place_free(x, y))
                {
                    other.scene = 6;
                    exit;
                }
            }
            
            instance_destroy(obj_player_npc);
            scr_cutscene_end();
            cutscene_advance(0);
            break;
    }
}
