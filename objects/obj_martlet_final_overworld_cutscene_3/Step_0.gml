if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1.5);
        break;
    
    case 1:
        draw_alpha = lerp(draw_alpha, 0, 0.1);
        
        if (draw_alpha <= 0.01)
            draw_alpha = 0;
        
        if (draw_alpha == 0)
            scene++;
        
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Humans are dangerous#  and cannot be trusted.";
            prt[0] = 315;
        }
        
        break;
    
    case 4:
        cutscene_npc_walk(1164, 200, 100, 1, "y", "up");
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        audio_play_sound(snd_sliding_door_open, 1, 0);
        cutscene_advance();
        break;
    
    case 7:
        obj_truelab_door.hspeed = 4;
        
        if (obj_truelab_door.x > 220)
        {
            cutscene_advance();
            obj_truelab_door.hspeed = 0;
        }
        
        break;
    
    case 8:
        cutscene_wait(1.5);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Humans are dangerous...";
            prt[0] = 315;
        }
        
        break;
    
    case 10:
        cutscene_wait(2);
        break;
    
    case 11:
        cutscene_npc_walk(1164, 200, 80, 0.2, "y", "up");
        cutscene_advance();
        break;
    
    case 12:
        cymbal_sound = audio_play_sound(mus_cymbal, 1, 0);
        cutscene_advance();
        break;
    
    case 13:
        draw_alpha_white = audio_sound_get_track_position(cymbal_sound) / audio_sound_length(mus_cymbal);
        
        if (draw_alpha_white >= 0.99)
        {
            draw_alpha_white = 1;
            cutscene_advance();
        }
        
        break;
    
    case 14:
        cutscene_wait(1.5);
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Humans are dangerous...";
        }
        
        break;
    
    case 16:
        cutscene_wait(2);
        break;
    
    case 17:
        global.hotland_flag[9] = 2;
        global.battle_enemy_name = "martlet genocide final";
        global.battling_boss = true;
        global.battle_start = true;
        global.sound_carry_overworld = false;
        
        if (global.current_hp_self < global.max_hp_self)
            global.current_hp_self = global.max_hp_self;
        
        scr_battle_save();
        room_goto(rm_battle);
        persistent = true;
        scene++;
        break;
    
    case 18:
        if (room != rm_battle)
            exit;
        
        if (instance_exists(obj_battle_fade_in_screen))
        {
            instance_destroy(obj_battle_fade_in_screen);
            instance_create_depth(0, 0, -9999, obj_battle_fade_in_screen_white);
        }
        
        instance_destroy();
        break;
}
