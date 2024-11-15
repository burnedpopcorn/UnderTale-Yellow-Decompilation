var snap_sound;

if (scene == 0 && scr_interact() && keyboard_multicheck_pressed(0))
{
    audio_play_sound(snd_switch, 1, 0);
    image_index = 1;
    audio_pause_sound(obj_flowey_world_controller.cutscene_music);
    scene = 1;
    scr_cutscene_start();
}

switch (scene)
{
    case 1:
        pl_xstart = obj_pl.x;
        cutscene_wait(3);
        break;
    
    case 2:
        snap_sound = audio_play_sound(snd_flowey_world_snap, 1, 0);
        audio_sound_pitch(snap_sound, random_range(0.8, 1.2));
        obj_pl.y += 20;
        obj_pl.direction = 90;
        
        if (obj_pl.y < 190)
        {
            cutscene_advance();
        }
        else
        {
            obj_pl.y = 190;
            cutscene_advance(4);
        }
        
        break;
    
    case 3:
        if (cutscene_wait(0.05))
            cutscene_advance(2);
        
        break;
    
    case 4:
        snap_sound = audio_play_sound(snd_flowey_world_snap, 1, 0);
        audio_sound_pitch(snap_sound, random_range(0.8, 1.2));
        obj_pl.x -= 20;
        obj_pl.direction = 0;
        
        if (obj_pl.x > 40)
        {
            cutscene_advance();
        }
        else
        {
            obj_pl.x = 40;
            cutscene_advance(6);
        }
        
        break;
    
    case 5:
        if (cutscene_wait(0.05))
            cutscene_advance(4);
        
        break;
    
    case 6:
        audio_play_sound(snd_switch, 1, 0);
        draw_overlay = true;
        cutscene_advance();
        break;
    
    case 7:
        cutscene_wait(2);
        break;
    
    case 8:
        draw_overlay = false;
        audio_resume_sound(obj_flowey_world_controller.cutscene_music);
        scr_cutscene_end();
        layer_set_visible("vines_lever", true);
        layer_set_visible("Decorations_hidable", false);
        cutscene_advance();
        break;
}
