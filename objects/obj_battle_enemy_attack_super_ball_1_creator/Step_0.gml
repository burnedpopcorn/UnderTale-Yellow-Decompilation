if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        break;
    
    case 0:
        if (box_resize == true && !scr_battle_box_resize_midfight(280, 140))
            exit;
        
        with (obj_axis_body)
        {
            sprite_index = spr_axis_body_charge;
            image_index = 0;
            image_speed = 1;
        }
        
        scene++;
        break;
    
    case 1:
        with (obj_axis_body)
        {
            if (image_index >= (image_number - 1))
            {
                sprite_index = spr_axis_body_charge_hold;
                other.scene++;
            }
        }
        
        break;
    
    case 2:
        var ball = instance_create_depth(obj_axis_body.x, obj_axis_body.y - 80, -300, obj_battle_enemy_attack_axis_energy_ball_boss_red);
        ball.launch_speed = launch_speed;
        scene++;
        break;
    
    case 3:
        obj_axis_body.x = 320 + (sin(degtorad(axis_deg)) * axis_x_offset);
        axis_deg += axis_deg_inc;
        
        if (axis_deg > 360)
            axis_deg -= 360;
        
        if (!instance_exists(obj_battle_enemy_attack_axis_energy_ball_boss_red))
            instance_destroy();
        
        break;
}
