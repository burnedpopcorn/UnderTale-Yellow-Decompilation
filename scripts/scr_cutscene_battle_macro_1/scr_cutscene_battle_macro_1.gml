function scr_cutscene_battle_macro_1()
{
    if (live_call())
        return global.live_result;
    
    switch (scene)
    {
        case 0:
            cutscene_wait(0.5);
            break;
        
        case 1:
            instance_create_depth(320, 110, 100, obj_macro_froggit_body);
            instance_create_depth(320, 122, 99, obj_macro_froggit_head);
            scr_audio_fade_out(mus_funsized_yellow, 1500);
            obj_micro_froggit.can_jump = false;
            audio_play_sound(snd_encounter, 1, 0);
            var cutscene_ex = instance_create_depth(obj_micro_froggit.x, obj_micro_froggit.y - 25, -200, obj_cutscene_ex);
            cutscene_ex.image_xscale = 2;
            cutscene_ex.image_yscale = 2;
            cutscene_advance();
            break;
        
        case 2:
            cutscene_wait(1);
            break;
        
        case 3:
            instance_destroy(obj_cutscene_ex);
            draw_enabled = true;
            cutscene_wait(2.5);
            break;
        
        case 4:
            draw_enabled = false;
            cutscene_wait(1);
            break;
        
        case 5:
            with (obj_micro_froggit)
            {
                if (path_position == 0 || floor(path_position) == 1)
                {
                    var froggit_jump = audio_play_sound(snd_playerjump, 1, 0);
                    audio_sound_pitch(froggit_jump, 0.5);
                    path_start(pt_micro_froggit_run, 6, path_action_stop, false);
                }
                
                if (x > 640)
                {
                    instance_destroy();
                    other.scene++;
                }
            }
            
            break;
        
        case 6:
            cutscene_wait(2);
            break;
        
        case 7:
            instance_create_depth(0, 0, obj_macro_froggit_body.depth + 10, obj_macro_froggit_particle);
            burst_count = 3;
            cutscene_advance();
            break;
        
        case 8:
        case 10:
        case 12:
            obj_macro_froggit_particle.particle_burst = true;
            
            if (scene == 12)
                burst_count--;
            
            cutscene_advance();
            break;
        
        case 9:
        case 11:
            cutscene_wait(0.1);
            break;
        
        case 13:
            if (burst_count > 0)
            {
                if (cutscene_wait(1.5))
                    cutscene_advance(8);
            }
            else
            {
                cutscene_advance();
            }
            
            break;
        
        case 14:
            cutscene_wait(3);
            break;
        
        case 15:
            instance_destroy(obj_macro_froggit_particle);
            obj_macro_froggit_body.draw_silhouette_alpha -= 0.05;
            obj_background_macro_froggit.draw_alpha = 1 - obj_macro_froggit_body.draw_silhouette_alpha;
            
            if (obj_macro_froggit_body.draw_silhouette_alpha <= 0)
            {
                obj_macro_froggit_body.draw_silhouette_alpha = 0;
                obj_background_macro_froggit.draw_alpha = 1;
                cutscene_advance();
            }
            
            break;
        
        case 16:
            cutscene_wait(1);
            break;
        
        case 17:
            if (!instance_exists(obj_quote_bubble_battle_yellow_2))
            {
                with (obj_quote_bubble_battle)
                    instance_destroy();
                
                instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
            }
            
            draw_enabled = true;
            cutscene_wait(2);
            break;
        
        case 18:
            global.battle_music = audio_play_sound(mus_through_the_macro_lens, 20, true);
            instance_create_depth(0, 0, -100, obj_macro_frog_counter);
            
            with (obj_macro_froggit_head)
                path_start(pt_macro_froggit_head, 0.5, path_action_continue, 0);
            
            cutscene_advance();
            break;
        
        case 19:
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            instance_destroy();
            
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
            
            break;
    }
}
