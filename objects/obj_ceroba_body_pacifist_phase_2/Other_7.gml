if (live_call())
    return global.live_result;

switch (sprite_index)
{
    case spr_ceroba_p2_1:
        break;
    
    case spr_ceroba_p2_idle_reveal:
        obj_ceroba_transformation_mask.image_alpha = 1;
        sprite_index = -4;
        break;
    
    case spr_ceroba_p2_knocked_down:
        image_speed = 1;
        sprite_index = spr_ceroba_p2_knocked_down_loop;
        obj_ceroba_transformation_mask.mask_is_vulnerable = true;
        break;
    
    case spr_ceroba_p2_get_up_1:
        instance_create_depth(obj_ceroba_phase_2_shield.x, obj_ceroba_phase_2_shield.y, -9999, obj_ceroba_phase_2_shield_reappear);
        break;
    
    case spr_ceroba_p2_block:
    case spr_ceroba_p2_block_3:
    case spr_ceroba_p2_defeated_turn_left:
        image_speed = 0;
        image_index = image_number - 1;
        break;
    
    case spr_ceroba_p2_block_2:
        sprite_index = spr_ceroba_p2_block_3;
        image_index = 0;
        image_speed = 1;
        break;
    
    case spr_ceroba_p2_get_up_2:
        image_index = 0;
        sprite_index = spr_ceroba_p2_get_up_3;
        break;
    
    case spr_ceroba_p2_get_up_3:
        instance_create_depth(obj_ceroba_phase_2_shield.x, obj_ceroba_phase_2_shield.y, -9999, obj_ceroba_phase_2_shield_reappear);
        break;
    
    case spr_ceroba_p2_special_attack_1:
        image_index = 0;
        sprite_index = spr_ceroba_p2_special_attack_2;
        break;
    
    case spr_ceroba_p2_special_attack_2:
        image_index = 1;
        image_xscale *= -1;
        
        with (obj_battle_enemy_attack_ceroba_phase_2_special_attack_spawner)
        {
            bullet_attack_count -= 1;
            
            if (bullet_attack_count <= 0 && image_xscale == 1)
            {
                sequence_layer_enabled = true;
                other.sprite_index = spr_ceroba_p2_special_attack;
                other.image_index = 0;
                event_user(0);
            }
        }
        
        break;
    
    case spr_ceroba_p2_defeated_left_talk:
    case spr_ceroba_p2_defeated_side_idle:
    case spr_ceroba_p2_defeated_side_talk:
    case spr_ceroba_p2_defeated_spared:
    case spr_ceroba_p2_defeated_talk:
    case spr_ceroba_p2_knocked_down_loop:
        break;
    
    default:
        sprite_index = -4;
        break;
}
