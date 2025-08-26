if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        for (var i = 0; i < bullet_number_max; i++)
        {
            if (timer == floor(i * (360 / bullet_number_max / bullet_speed)))
            {
                var bullet = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y - 80, -100, obj_battle_enemy_attack_ceroba_flower_circle_flower);
                bullet.bullet_speed = bullet_speed;
                bullet.attack_dir = attack_dir;
                bullet.bullet_spawner = id;
                bullet_number_current += 1;
            }
        }
        
        if (bullet_number_current >= bullet_number_max)
        {
            if (!alarm[0])
            {
                alarm[0] = 20;
                scene++;
            }
        }
        
        timer += 1;
        break;
    
    case 1:
        with (obj_heart_battle_fighting_parent)
        {
            if (point_distance(x, y, obj_battle_enemy_attack_ceroba_flower_circle_flower.x, obj_battle_enemy_attack_ceroba_flower_circle_flower.y) < 50)
                other.scene++;
        }
        
        break;
    
    case 2:
        var speed_perc = _speed_perc;
        
        if (instance_exists(obj_petal_generator_phase_2))
            obj_petal_generator_phase_2.petals_enabled = false;
        
        with (obj_battle_enemy_attack_ceroba_flower_circle_flower)
        {
            state = 2;
            
            if (!variable_instance_exists(id, "homing_speed_original"))
                homing_speed_original = homing_speed;
            
            image_speed = speed_perc;
            bullet_speed = other.bullet_speed * speed_perc;
            homing_speed = homing_speed_original * speed_perc;
        }
        
        with (obj_petal)
        {
            if (!variable_instance_exists(id, "weight_original"))
            {
                weight_original = weight;
                trajectory_original = trajectory;
                modifier_original = modifier;
            }
            else
            {
                weight = weight_original * speed_perc;
                trajectory = trajectory_original * speed_perc;
                modifier = modifier_original * (1000 * (1 - speed_perc));
                image_speed = 1 * speed_perc;
            }
        }
        
        obj_ceroba_cape_1.image_speed = 1 * speed_perc;
        obj_ceroba_cape_2.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_phase_2_head.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_phase_2_staff.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_sideburn_left.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_sideburn_right.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_body_pacifist_phase_2.anim_stage = 0;
        
        with (obj_ceroba_transform_slowdown)
            starlo_take_aim_overlay_alpha = 1 - speed_perc;
        
        if (_speed_perc <= 0)
        {
            obj_heart_battle_fighting_parent.moveable = false;
            cutscene_advance();
        }
        else
        {
            _speed_perc -= 0.1;
        }
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        with (obj_heart_battle_fighting_yellow_final)
        {
            can_dash = true;
            dash_delay = 0;
        }
        
        hint_draw = true;
        
        if (keyboard_multicheck_pressed(vk_anykey))
        {
            var walk_speed = global.speed_self + (1 * sign(global.current_sp_self));
            var key_right = global.right_key;
            var key_left = -global.left_key;
            var key_down = global.down_key;
            var key_up = -global.up_key;
            var move_x = key_left + key_right;
            var move_y = key_down + key_up;
            var hsp = move_x * walk_speed;
            var vsp = move_y * walk_speed;
            
            if (vsp == 0 && hsp == 0)
                vsp = -1 * walk_speed;
            
            var battle_box = obj_dialogue_box_battle_transformation_any;
            
            with (obj_heart_battle_fighting_yellow_final)
            {
                can_cancel_dash = false;
                moveable = true;
                is_dashing = true;
                
                if (move_x == 0 && move_y == 0)
                    move_y = -1;
                
                move_y_dash = move_y;
                move_x_dash = move_x;
                dash_timer = 8;
            }
            
            hint_draw = false;
            scene++;
        }
        
        break;
    
    case 5:
        var speed_perc = _speed_perc;
        obj_petal_generator_phase_2.petals_enabled = true;
        
        with (obj_battle_enemy_attack_ceroba_flower_circle_flower)
        {
            if (!variable_instance_exists(id, "homing_speed_original"))
                homing_speed_original = homing_speed;
            
            image_speed = speed_perc;
            bullet_speed = other.bullet_speed * speed_perc;
            homing_speed = homing_speed_original * speed_perc;
        }
        
        with (obj_petal)
        {
            if (!variable_instance_exists(id, "weight_original"))
            {
                weight_original = weight;
                trajectory_original = trajectory;
                modifier_original = modifier;
            }
            else
            {
                weight = weight_original * speed_perc;
                trajectory = trajectory_original * speed_perc;
                modifier = modifier_original * (1000 * (1 - speed_perc));
                image_speed = 1 * speed_perc;
            }
        }
        
        obj_ceroba_cape_1.image_speed = 1 * speed_perc;
        
        with (obj_ceroba_transform_slowdown)
            starlo_take_aim_overlay_alpha = 1 - speed_perc;
        
        if (_speed_perc >= 1)
        {
            obj_ceroba_cape_1.image_speed = 1;
            instance_destroy(obj_ceroba_transform_slowdown);
            cutscene_advance();
        }
        else
        {
            _speed_perc += 0.1;
        }
        
        obj_ceroba_cape_2.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_phase_2_head.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_phase_2_staff.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_sideburn_left.image_speed = obj_ceroba_cape_1.image_speed;
        obj_ceroba_sideburn_right.image_speed = obj_ceroba_cape_1.image_speed;
        
        with (obj_ceroba_body_pacifist_phase_2)
            event_perform(ev_create, 0);
        
        break;
    
    case 6:
        if (!instance_exists(obj_battle_enemy_attack_ceroba_flower_circle_flower))
            instance_destroy();
        
        break;
}

if (scene < 4)
{
    with (obj_battle_enemy_attack_ceroba_flower_circle_flower)
    {
        attack_target_x = obj_heart_battle_fighting_parent.x;
        attack_target_y = obj_heart_battle_fighting_parent.y;
    }
}

if (hint_draw == true)
{
    if (hint_alpha < 1)
        hint_alpha += 0.1;
}
