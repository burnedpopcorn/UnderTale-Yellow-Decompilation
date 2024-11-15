var clay_piece;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (!instance_exists(obj_battle_enemy_attack_slither_warning))
            scene++;
        
        break;
    
    case 1:
        image_yscale = lerp(image_yscale, 1.51, 0.2);
        image_xscale = 1 - ((image_yscale / 1.5) * 0.3);
        
        if (image_yscale >= 1.5)
        {
            image_xscale = 0.7;
            image_yscale = 1.5;
            scene++;
        }
        
        break;
    
    case 2:
        image_yscale = lerp(image_yscale, 0.99, 0.25);
        image_xscale = 1 - (((image_yscale - 1) / 0.5) * 0.3);
        
        if (image_yscale <= 1)
        {
            image_xscale = 1;
            image_yscale = 1;
            scene++;
        }
        
        break;
    
    case 3:
        cutscene_wait(4);
        
        if (spawn_delay > 0)
        {
            spawn_delay--;
        }
        else
        {
            clay_piece = instance_create_depth(x, y, -100, obj_battle_enemy_attack_slither_snake_clay_piece);
            clay_piece.direction = spawn_direction;
            clay_piece.speed = 10;
            spawn_direction += spawn_direction_inc;
            
            if (spawn_direction >= spawn_direction_max || spawn_direction <= spawn_direction_min)
            {
                spawn_direction_inc *= -1;
                spawn_direction += (spawn_direction_inc * 0.5);
            }
            
            spawn_delay = spawn_delay_max;
        }
        
        break;
    
    case 4:
        sprite_index = spr_battle_enemy_attack_sir_slither_clay_finished;
        image_index = 0;
        cutscene_advance();
        break;
    
    case 5:
        if (image_index >= (image_number - 1))
        {
            image_speed = 0;
            cutscene_wait(0.5);
        }
        
        break;
    
    case 6:
        instance_destroy(obj_battle_enemy_attack_slither_pottery_generator);
        break;
}
