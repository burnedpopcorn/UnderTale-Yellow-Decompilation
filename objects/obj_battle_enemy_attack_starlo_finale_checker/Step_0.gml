var counter_timer_max = 0;
var player_soul = 2980;
var box = obj_dialogue_box_battle_transformation_any;

switch (counter_current)
{
    case 0:
        instance_create(box.bbox_left - 20, box.bbox_top - 20, obj_battle_enemy_attack_starlo_bullet_rain_gun);
        instance_create(box.bbox_right + 20, box.bbox_top - 20, obj_battle_enemy_attack_starlo_bullet_rain_gun);
        counter_current++;
        break;
    
    case 1:
        counter_timer_max = 22.5;
        break;
    
    case 2:
        instance_create(box.bbox_left - 20, box.bbox_top - 20, obj_battle_enemy_attack_starlo_bullet_rain_gun);
        instance_create(box.bbox_left - 20, box.bbox_bottom + 20, obj_battle_enemy_attack_starlo_bullet_rain_gun);
        counter_current++;
        break;
    
    case 3:
        counter_timer_max = 15;
        break;
    
    case 4:
        instance_create(box.bbox_left + 40, box.bbox_top - 20, obj_battle_enemy_attack_starlo_dynamite_vertical);
        counter_current++;
        break;
    
    case 5:
        counter_timer_max = 12;
        break;
    
    case 6:
        instance_create(box.bbox_right - 40, box.bbox_top - 20, obj_battle_enemy_attack_starlo_dynamite_vertical);
        counter_current++;
    
    case 7:
        counter_timer_max = 66;
        break;
    
    case 8:
        var gun_top_y = box.y - 25;
        var gun_mid_y = box.y;
        var gun_bot_y = box.y + 25;
        var gun_left_x = box.bbox_left - 60;
        var gun_right_x = box.bbox_right + 60;
        instance_create(gun_right_x, gun_top_y, obj_battle_enemy_attack_starlo_guns_horizontal_gun);
        instance_create(gun_left_x, gun_bot_y, obj_battle_enemy_attack_starlo_guns_horizontal_gun);
        instance_create(box.x - 30, box.bbox_top - 60, obj_battle_enemy_attack_starlo_guns_vertical_gun);
        instance_create(box.x + 30, box.bbox_top - 60, obj_battle_enemy_attack_starlo_guns_vertical_gun);
        counter_current++;
        break;
    
    case 9:
        counter_timer_max = 24;
        break;
    
    case 10:
        instance_create(box.bbox_right + 30, box.bbox_top, obj_battle_enemy_attack_starlo_dynamite_alt);
        counter_current++;
        break;
    
    case 11:
        counter_timer_max = 34.5;
        break;
    
    case 12:
        instance_create(box.bbox_left - 30, box.bbox_top, obj_battle_enemy_attack_starlo_dynamite_alt);
        counter_current++;
        break;
    
    case 13:
        counter_timer_max = 25;
        break;
    
    case 14:
        var gun_dir = 0;
        var gun_dir_inc = 72;
        
        for (var i = 0; i < 5; i++)
        {
            var xx = lengthdir_x(180, gun_dir);
            var yy = lengthdir_y(180, gun_dir);
            instance_create(320 + xx, 320 + yy, obj_battle_enemy_attack_starlo_finale_gun);
            gun_dir = gun_dir_inc * i;
        }
        
        counter_current++;
        break;
    
    case 15:
        counter_timer_max = 45;
        break;
    
    case 16:
        instance_destroy();
        break;
}

if (counter_timer_max == 0)
    exit;

if (counter_timer < counter_timer_max)
{
    counter_timer++;
}
else
{
    counter_timer = 0;
    counter_current += 1;
}
