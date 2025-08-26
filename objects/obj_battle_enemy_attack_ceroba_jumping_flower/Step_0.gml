switch (jumping_flower_stage)
{
    case 0:
        if (round(vspeed) >= 0)
            jumping_flower_stage += 1;
        
        break;
    
    case 1:
        if (global.battle_phase == 2)
        {
            image_xscale = 1.5;
            image_yscale = 1.5;
            audio_play_sound(snd_enemy_bullet_shot, 1, 0);
            
            for (var a = 1; a <= jumping_flower_bullet_number; a++)
            {
                with (instance_create(x, y, obj_battle_enemy_attack_ceroba_jumping_flower_bullet))
                {
                    direction = a * (360 / other.jumping_flower_bullet_number);
                    speed = 8;
                }
            }
        }
        
        jumping_flower_stage += 1;
        break;
    
    case 2:
        if (y >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 30))
        {
            instance_destroy();
            
            with (instance_create(x, y, obj_battle_enemy_attack_ceroba_opener_explosion))
                ring_object = other.ring_object;
        }
        
        break;
}

if (vspeed > 8)
    vspeed = 8;

if (image_xscale > 1)
    image_xscale -= 0.05;

if (image_yscale > 1)
    image_yscale -= 0.05;
