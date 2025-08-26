var spin_speed_max = 5;
var spin_speed_inc = 0.15;
var bullet_shoot_speed = 5;

if (bullet_fade_delay > 0)
{
    bullet_fade_delay--;
}
else if (image_alpha < 1)
{
    image_alpha += 0.15;
    
    if (!alarm[0])
        alarm[0] = bullet_spin_time;
}

switch (bullet_state)
{
    case 1:
        x = 320 + lengthdir_x(bullet_distance, bullet_dir_current);
        y = 320 + lengthdir_y(bullet_distance, bullet_dir_current);
        bullet_dir_current += bullet_spin_speed;
        
        if (bullet_spin_speed < spin_speed_max)
            bullet_spin_speed += spin_speed_inc;
        
        break;
    
    case 2:
        speed = bullet_shoot_speed;
        var battle_box = obj_dialogue_box_battle_transformation_any;
        
        if (point_in_rectangle(x, y, battle_box.bbox_left + 15, battle_box.bbox_top + 15, battle_box.bbox_right - 15, battle_box.bbox_bottom - 15))
            bullet_state = 3;
        
        break;
    
    case 3:
        var battle_box = obj_dialogue_box_battle_transformation_any;
        var next_position_x = x + lengthdir_x(speed, direction);
        var next_position_y = y + lengthdir_y(speed, direction);
        var boundary_left = battle_box.bbox_left + 10;
        var boundary_top = battle_box.bbox_top + 10;
        var boundary_right = battle_box.bbox_right - 10;
        var boundary_bottom = battle_box.bbox_bottom - 10;
        
        if (!point_in_rectangle(next_position_x, next_position_y, boundary_left, boundary_top, boundary_right, boundary_bottom))
        {
            if ((next_position_x > boundary_right || next_position_x < boundary_left) && (next_position_y > boundary_bottom || next_position_y < boundary_top))
            {
                direction -= 180;
            }
            else if (next_position_x > boundary_right)
            {
                if (direction > 180)
                    direction -= 90;
                else
                    direction += 90;
            }
            else if (next_position_x < boundary_left)
            {
                if (direction > 180)
                    direction += 90;
                else
                    direction -= 90;
            }
            else if (next_position_y > boundary_bottom)
            {
                if (direction > 270)
                    direction += 90;
                else
                    direction -= 90;
            }
            else if (next_position_y < boundary_top)
            {
                if (direction > 90)
                    direction += 90;
                else
                    direction -= 90;
            }
            
            direction += irandom_range(-20, 20);
            x = xprevious;
            y = yprevious;
            audio_play_sound(snd_decibatbouncewave1, 1, 0);
        }
        
        break;
}

if (place_meeting(x, y, obj_heart_battle_fighting_parent) && obj_heart_battle_fighting_parent.vulnerable)
{
    if (!instance_exists(obj_battle_enemy_attack_ceroba_white_soul))
        instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_ceroba_white_soul);
    else
        obj_battle_enemy_attack_ceroba_white_soul.alarm[0] = 30;
}
