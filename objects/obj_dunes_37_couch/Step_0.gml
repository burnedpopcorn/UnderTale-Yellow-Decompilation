switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(0))
        {
            scene = 1;
            scr_cutscene_start();
        }
        
        break;
    
    case 1:
        scr_text();
        
        with (msg)
        {
            message[0] = "* (A couch not unfit for a#  thrift store.)";
            message[1] = "* (These cramped living#  conditions are bringing back#  unpleasant memories.)";
            message[2] = "* (Hop on?)";
            ch_msg = 2;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                other.scene = 2;
            }
            else if (outcome == 2)
            {
                instance_destroy();
                other.scene = 0;
                scr_cutscene_end();
            }
        }
        
        break;
    
    case 2:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_advance();
        break;
    
    case 3:
        if (obj_player_npc.ystart < y)
            cutscene_npc_walk(1168, 200, obj_player_npc.ystart, 3, "y", "up", "nothing", 250, 150);
        else
            cutscene_npc_walk(1168, 250, 150, 3, "y", "up");
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        tile_layer_hide(-240);
        scr_path_jump(1168, 250, 135, 5);
        audio_play_sound(snd_playerjump, 1, 0);
        cutscene_advance();
        break;
    
    case 6:
        with (obj_player_npc)
        {
            if (scr_path_jump_end())
            {
                action_sprite = true;
                sprite_index = right_sprite_idle;
                image_angle += 90;
                other.scene++;
            }
        }
        
        if (!alarm[0])
            alarm[0] = 75;
        
        break;
    
    case 7:
        if (global.down_keyp || global.up_keyp || global.left_keyp || global.right_keyp || keyboard_multicheck_pressed(0) || keyboard_multicheck_pressed(1) || keyboard_multicheck_pressed(2))
        {
            alarm[0] = -1;
            alarm[1] = -1;
            cutscene_advance();
        }
        
        break;
    
    case 8:
        with (obj_player_npc)
        {
            sprite_index = down_sprite;
            image_index = 1;
            image_speed = 0;
            image_angle = 0;
        }
        
        scr_path_jump(1168, 250, 150, 4);
        audio_play_sound(snd_playerjump, 1, 0);
        cutscene_advance();
        break;
    
    case 9:
        with (obj_player_npc)
        {
            if (scr_path_jump_end())
            {
                instance_destroy();
                other.scene = 0;
                scr_cutscene_end();
            }
        }
        
        tile_layer_show(-240);
        break;
}
