if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        if (egg.image_alpha < 0.99)
            egg.image_alpha = lerp(egg.image_alpha, 1, 0.3);
        else
            cutscene_advance();
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
        break;
    
    case 2:
        for (var i = 0; i < array_length(attack_interval_current); i++)
        {
            attack_interval_current[i] -= 1;
            
            if (attack_interval_current[i] <= 0)
            {
                xx[i] = irandom_range(box.bbox_left + 20, box.bbox_right - 20);
                
                if (i > 0)
                {
                    xx[i] = xx[i - 1] + 50;
                    
                    if (xx[i] > (box.bbox_right - 20))
                        xx[i] = xx[i - 1] - 50;
                }
                
                var yy = box.bbox_bottom + 40;
                instance_create_depth(xx[i], yy, box.depth - 1, obj_battle_enemy_attack_sousborg_egg_boil_smoke);
                attack_interval_current[i] = attack_interval;
            }
        }
        
        cutscene_wait(4.5);
        break;
    
    case 3:
        egg = instance_create_depth(320, box.bbox_bottom - 4, egg.depth - 10, obj_battle_enemy_attack_sousborg_egg_fire);
        instance_destroy(obj_battle_enemy_attack_sousborg_egg_boil);
        
        with (egg)
        {
            image_xscale = 2;
            image_yscale = 2;
            image_speed = 1;
            image_alpha = 1;
        }
        
        audio_play_sound(snd_sousborg_egg_fire, 1, 0);
        audio_stop_sound(snd_sousborg_egg_sizzle);
        audio_play_sound(snd_sousborg_egg_fire_loop, 1, 1);
        cutscene_advance();
        break;
    
    case 4:
        cutscene_wait(0.2);
        break;
        break;
    
    case 5:
        for (var i = 0; i < array_length(attack_interval_fire); i++)
        {
            attack_interval_fire[i] -= 1;
            
            if (attack_interval_fire[i] <= 0)
            {
                xx[i] = irandom_range(box.bbox_left + 20, box.bbox_right - 20);
                
                if (i > 0)
                {
                    xx[i] = xx[i - 1] + 50;
                    
                    if (xx[i] > (box.bbox_right - 20))
                        xx[i] = xx[i - 1] - 50;
                }
                
                var yy = box.bbox_bottom + 40;
                instance_create_depth(xx[i], yy, box.depth - 1, obj_battle_enemy_attack_sousborg_egg_boil_fireball);
                attack_interval_fire[i] = attack_interval;
            }
        }
        
        cutscene_wait(4.5);
        break;
    
    case 6:
        instance_destroy();
        audio_stop_sound(snd_sousborg_egg_fire_loop);
        break;
}
