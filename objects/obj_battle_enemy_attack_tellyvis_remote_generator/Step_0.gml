if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        with (obj_tellyvis_body_a)
        {
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                sprite_index = spr_tellyvis_remote_2;
                image_index = image_number - 1;
                other.scene++;
                other.timer = 15;
            }
        }
        
        break;
    
    case 1:
        if (timer > 0)
        {
            timer--;
            exit;
        }
        
        obj_tellyvis_body_a.image_index = 0;
        scene++;
        break;
    
    case 2:
        other.attack_counter_current = -1;
        
        if (attack_counter_max <= 0)
        {
            attack_remote_destroy = true;
            instance_destroy();
            exit;
        }
        
        with (obj_tellyvis_body_a)
        {
            if (image_speed != 1)
            {
                sprite_index = spr_tellyvis_remote_2;
                image_index = 0;
                image_speed = 1;
            }
            
            if (image_index >= (image_number - 1))
            {
                show_debug_message("Crispy Slash");
                
                if (!instance_exists(obj_quote_battle_tellyvis_a_mid_attack))
                {
                    instance_create_depth(0, 0, -9999, obj_quote_battle_tellyvis_a_mid_attack);
                }
                else
                {
                    with (obj_quote_battle_tellyvis_a_mid_attack)
                    {
                        message_number += 1;
                        event_user(0);
                    }
                }
                
                sprite_index = spr_tellyvis_remote_1;
                image_index = image_number - 1;
                image_speed = 0;
                other.scene++;
                global.timer_attacks_counter = 0;
                other.random_attack_current_last = other.random_attack_current;
                other.random_attack_current = "nothing";
            }
        }
        
        break;
    
    case 3:
        event_user(0);
        break;
}
