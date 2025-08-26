if (live_call())
    return global.live_result;

var ceroba_image_index = obj_ceroba_body_pacifist_phase_2.image_index;

switch (scene)
{
    case 0:
        if (ceroba_image_index < 7)
        {
            image_alpha = 1 * (ceroba_image_index / 7);
        }
        else
        {
            image_alpha = 1;
            scene++;
        }
        
        break;
    
    case 1:
        audio_play_sound(snd_undertale_flash, 1, 0);
        bullet_hit_draw_timer = 5;
        scene++;
        break;
    
    case 2:
        image_speed = 1;
        image_index = 0;
        scene++;
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        if (image_alpha > 0)
        {
            image_alpha -= 0.1;
        }
        else
        {
            obj_heart_battle_menu.image_alpha = 1;
            
            if (global.hotland_flag[2] > 1)
                instance_create(0, 0, obj_dialogue_battle_move_select_intro);
            
            if (!instance_exists(obj_ceroba_phase_2_shield))
                instance_create_depth(x, y, obj_ceroba_transformation_mask.depth - 1, obj_ceroba_phase_2_shield);
            
            instance_destroy();
        }
        
        break;
}

if (bullet_hit_draw_timer > 0)
    bullet_hit_draw_timer--;
