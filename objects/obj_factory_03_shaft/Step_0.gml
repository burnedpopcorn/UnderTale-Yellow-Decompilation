switch (scene)
{
    case 0:
        cutscene_follower_into_actor();
        
        if (global.sworks_flag[37] < 2)
            instance_create(0, 0, obj_factory_03_shaft_intro);
        else
            instance_create(x, y, obj_overworld_fade_in_screen);
        
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        
        with (obj_player_npc)
        {
            x = 185;
            y = 147;
            action_sprite = true;
            sprite_index = spr_factory_03_clover_lying_down;
        }
        
        with (actor_follower)
        {
            x = 144;
            y = 144;
            action_sprite = true;
            sprite_index = spr_factory_03_ceroba_lying_down;
        }
        
        break;
    
    case 1:
        if (!instance_exists(obj_factory_03_shaft_intro))
            scene++;
        
        break;
    
    case 2:
        if (global.sworks_flag[37] == 1)
            cutscene_wait(2);
        else
            cutscene_wait(0.5);
        
        break;
    
    case 3:
        cutscene_dialogue();
        
        if (global.sworks_flag[37] == 1)
        {
            with (msg)
            {
                position = 1;
                ch_msg = 2;
                talker[0] = 1161;
                message[0] = "* Ow...";
                message[1] = "* I am so tired of this#  \"falling\" thing. ";
                message[2] = "* How about you?";
                prt[0] = 384;
                prt[1] = 377;
                prt[2] = 370;
                ch[1] = "So\ntired...";
                ch[2] = "Again!";
                
                if (outcome == 1)
                {
                    message[3] = "* Like, can't gravity#  screw off every now and#  then? Seriously.";
                    prt[3] = 377;
                }
                
                if (outcome == 2)
                {
                    message[3] = "* Again??? You didn't#  hit your head just#  now, did you?";
                    prt[3] = 381;
                }
                
                message[4] = "* Sigh...";
                prt[4] = 370;
            }
        }
        else
        {
            with (msg)
            {
                position = 1;
                talker[0] = 1161;
                message[0] = "* Ugh...";
                prt[0] = 370;
            }
        }
        
        break;
    
    case 4:
        cutscene_npc_reset_sprite(1161, "down");
        audio_play_sound(snd_playerjump, 1, 0);
        
        with (obj_ceroba_npc)
            path_start(pt_pljump, 2, path_action_stop, false);
        
        break;
    
    case 5:
        with (obj_ceroba_npc)
        {
            if (path_position >= 1)
                other.scene++;
        }
        
        break;
    
    case 6:
        obj_ceroba_npc.npc_direction = "right";
        cutscene_dialogue();
        
        if (global.sworks_flag[37] == 1)
        {
            with (msg)
            {
                position = 1;
                talker[0] = 1161;
                message[0] = "* Come on, get up. We can#  do this.";
                prt[0] = 370;
            }
        }
        else
        {
            with (msg)
            {
                position = 1;
                talker[0] = 1161;
                message[0] = "* Gotta try again.";
                prt[0] = 370;
            }
        }
        
        break;
    
    case 7:
        cutscene_npc_reset_sprite(1168, "down");
        audio_play_sound(snd_playerjump, 1, 0);
        
        with (obj_player_npc)
            path_start(pt_pljump, 2, path_action_stop, false);
        
        break;
    
    case 8:
        with (obj_player_npc)
        {
            if (path_position >= 1)
                other.scene++;
        }
        
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        obj_pl.direction = 0;
        cutscene_actor_into_follower();
        obj_pl.direction = 270;
        global.sworks_flag[37] = 2;
        global.sworks_flag[23] = 1;
        cutscene_end();
        break;
}
