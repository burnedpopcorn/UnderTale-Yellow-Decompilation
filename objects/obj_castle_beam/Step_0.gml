if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(0.1);
        break;
    
    case 1:
        sprite_index = spr_clover_geno_laser_loop;
        image_xscale = 0.5;
        image_yscale = 0.5;
        cutscene_advance();
        break;
    
    case 2:
        image_xscale = lerp(image_xscale, 1.3, 0.5);
        image_yscale = lerp(image_yscale, 1.3, 0.5);
        
        if (image_xscale > 1.2)
            cutscene_advance();
        
        break;
    
    case 3:
        image_xscale = lerp(image_xscale, 1, 0.3);
        image_yscale = lerp(image_yscale, 1, 0.3);
        
        if (image_xscale < 1.05)
        {
            image_xscale = 1;
            image_yscale = 1;
            cutscene_advance();
        }
        
        break;
    
    case 4:
        cutscene_wait(2);
        break;
    
    case 5:
        draw_alpha += 0.05;
        
        if (draw_alpha >= 1)
        {
            obj_castle_throne_room_controller.darken_target = 0;
            cutscene_advance();
        }
        
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        obj_asgore_npc.sprite_index = spr_asgore_death;
        obj_asgore_npc.image_speed = 1;
        var death_sound = audio_play_sound(snd_monster_damage_death, 1, 0);
        audio_sound_pitch(death_sound, 0.65);
        cutscene_advance();
        break;
    
    case 8:
        if (obj_asgore_npc.image_index >= (obj_asgore_npc.image_number - 1))
        {
            instance_create_depth(obj_asgore_npc.x, obj_asgore_npc.y, obj_asgore_npc.depth, obj_asgore_soul);
            instance_destroy(obj_asgore_npc);
            layer_set_visible("bg_destroyed", true);
            cutscene_advance();
        }
        
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        sprite_index = spr_clover_geno_laser_finish;
        image_index = 0;
        image_speed = 1;
        cutscene_advance();
        break;
    
    case 11:
        if (image_index >= (image_number - 1))
        {
            image_alpha = 0;
            image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 12:
        draw_alpha -= 0.025;
        
        if (draw_alpha <= 0)
            cutscene_advance();
        
        break;
    
    case 13:
        instance_destroy();
        break;
}

if (instance_exists(obj_asgore_npc) && scene < 6)
{
    obj_asgore_npc.x = obj_asgore_npc.xstart + random_range(-2, 2);
    obj_asgore_npc.y = obj_asgore_npc.ystart + random_range(-2, 2);
}
