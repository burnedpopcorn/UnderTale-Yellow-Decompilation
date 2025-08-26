if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x < 400)
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_pl.y, 3, "x", "up");
        break;
    
    case 2:
        if (cutscene_wait(1.5))
            cutscene_advance(2.5);
        
        break;
    
    case 2.5:
        if (cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_martlet_npc.y + 60, 1, "x", "up"))
            cutscene_advance(3);
        
        break;
    
    case 3:
        cutscene_camera_move(obj_martlet_npc.x, 300, 1);
        camera_set_view_speed(view_camera[0], -1, -1);
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_instance_create(obj_martlet_npc.x, obj_martlet_npc.y - 45, obj_cutscene_ex);
        audio_play_sound(snd_encounter, 1, 0);
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_direction(obj_martlet_npc, "down");
        instance_destroy(obj_cutscene_ex);
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            position = 1;
            message[0] = "* ...";
            message[1] = "* So you found me...";
            message[2] = "* Pretty easy when#  there's so few left.";
            prt[0] = spr_martlet_head_disappointed;
            prt[1] = spr_martlet_head_unamused;
            prt[2] = spr_martlet_head_wondering;
        }
        
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_up_geno_shoot_roof, 1, true, 0, snd_guardener_gun_cock, 2);
        break;
    
    case 12:
        cutscene_wait(1);
        break;
    
    case 13:
        cutscene_battle_initiate("martlet genocide final", true, false);
        break;
}
