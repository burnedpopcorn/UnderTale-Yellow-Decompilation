switch (scene)
{
    case 0:
        if (image_index >= 4)
        {
            audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
            scene++;
            image_speed = 0.3;
            obj_martlet_npc.image_alpha = 0;
            draw_white_overlay = true;
            alarm[0] = 2;
        }
        
        break;
    
    case 1:
        if (image_index >= 12)
        {
            image_speed = 0;
            obj_hotland_roof_cutscene_neutral.scene++;
            scene++;
        }
        
        break;
    
    case 2:
        break;
    
    case 3:
        image_speed = 1;
        audio_play_sound(mus_flowey_roof_intro_1, 1, 0);
        scene++;
        break;
    
    case 4:
        if (image_index >= 47)
            cutscene_sfx_play(snd_monster_damage_death, 1);
        
        break;
    
    case 5:
        if (image_index >= 60)
        {
            image_speed = 0;
            cutscene_wait(1.5);
        }
        
        break;
    
    case 6:
        image_speed = 1;
        scene++;
        break;
    
    case 7:
        if (image_index >= (image_number - 1))
        {
            image_speed = 0;
            image_index = image_number - 1;
            scene++;
        }
        
        break;
    
    case 8:
        instance_create(obj_martlet_npc.x, obj_martlet_npc.y, obj_flowey_npc);
        obj_flowey_npc.down_sprite_idle = spr_flowey_rooftop_idle;
        instance_destroy(obj_martlet_npc);
        obj_pl.y += 40;
        obj_camera.y += 80;
        cutscene_advance();
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        overlay_alpha -= 0.01;
        
        if (overlay_alpha <= 0)
        {
            obj_hotland_roof_cutscene_neutral.scene++;
            instance_destroy(obj_screenshake_player);
            instance_destroy();
        }
        
        break;
}
