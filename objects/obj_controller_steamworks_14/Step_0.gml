switch (scene)
{
    case 1:
        cutscene_sfx_play(316, 1);
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_sfx_play(317, 1);
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
        cutscene_sfx_play(320, 1);
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        instance_destroy(global.party_member);
        
        if (global.route == 2)
        {
            instance_create(320, 120, obj_ceroba_npc);
            obj_ceroba_npc.npc_direction = "left";
        }
        
        obj_pl.x = 290;
        obj_pl.y = 120;
        obj_pl.direction = 0;
        cutscene_advance();
        break;
    
    case 10:
        if (draw_alpha > 0)
        {
            draw_alpha -= 0.05;
        }
        else if (global.route == 2)
        {
            cutscene_advance();
        }
        else
        {
            scr_radio_restart();
            cutscene_end();
            global.sworks_flag[3] = 3;
        }
        
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Can't say that was fun.";
            message[1] = "* Let's be extra cautious#  from now on, okay?";
            prt[0] = 382;
            prt[1] = 394;
        }
        
        break;
    
    case 12:
        global.sworks_flag[3] = 3;
        
        with (instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y, global.party_member))
        {
            sprite_index = left_sprite_idle;
            npc_reset = true;
        }
        
        instance_destroy(obj_ceroba_npc);
        scr_radio_restart();
        cutscene_end();
        break;
}
