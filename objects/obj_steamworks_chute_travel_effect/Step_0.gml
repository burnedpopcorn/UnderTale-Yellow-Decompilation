if (live_call())
    return global.live_result;

switch (scene)
{
    case 1:
        cutscene_sfx_play(snd_footstep1, 1);
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_sfx_play(snd_footstep2, 1);
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        footstep_counter -= 1;
        
        if (footstep_counter <= 0)
            cutscene_advance();
        else
            cutscene_advance(1);
        
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        if (room == rm_steamworks_05b)
            cutscene_sfx_play(snd_undertale_impact, 1);
        else
            cutscene_sfx_play(snd_playerjump, 1);
        
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_advance();
        break;
    
    case 10:
        if (global.route == 3)
        {
            cutscene_advance();
        }
        else
        {
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            obj_player_npc.sprite_index = spr_clover_chute_shakeoff;
            obj_player_npc.action_sprite = true;
            obj_player_npc.image_speed = 0;
        }
        
        obj_pl.direction = 270;
        break;
    
    case 11:
        if (draw_alpha > 0)
        {
            draw_alpha -= 0.05;
        }
        else
        {
            cutscene_advance();
            
            if (global.route == 3)
                cutscene_advance(13);
        }
        
        break;
    
    case 12:
        cutscene_npc_action_sprite(obj_player_npc, spr_clover_chute_shakeoff, 1, 0);
        break;
    
    case 13:
        scr_radio_restart();
        cutscene_end();
        break;
}
