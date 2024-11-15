if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (image_alpha < 1)
            image_alpha += 0.1;
        else
            scene++;
        
        break;
    
    case 1:
        audio_play_sound(snd_undertale_flash, 1, 0);
        instance_create_depth(x, y - 100, -1100, obj_ceroba_phase_2_bell_reappear);
        instance_create_depth(x + 80, y - 20, -1100, obj_ceroba_phase_2_bell_reappear);
        instance_create_depth(x, y + 70, -1100, obj_ceroba_phase_2_bell_reappear);
        instance_create_depth(x - 80, y - 20, -1100, obj_ceroba_phase_2_bell_reappear);
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
            instance_create(0, 0, obj_dialogue_battle_move_select_intro);
            instance_destroy();
        }
        
        break;
}

if (bullet_hit_draw_timer > 0)
    bullet_hit_draw_timer--;
