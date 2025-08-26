var counter_timer_max = 0;
var player_soul = 2980;
var box = obj_dialogue_box_battle_transformation_any;
var gun_top_y = box.y - 25;
var gun_mid_y = box.y;
var gun_bot_y = box.y + 25;
var gun_left_x = box.bbox_left - 60;
var gun_right_x = box.bbox_right + 60;
var dynamite_left_x = box.bbox_left + 40;
var dynamite_mid_x = box.x;
var dynamite_right_x = box.bbox_right - 40;
var dynamite_y = box.bbox_top - 20;

switch (counter_current)
{
    case 0:
        instance_create(dynamite_mid_x, dynamite_y, obj_battle_enemy_attack_starlo_dynamite_vertical);
        counter_current++;
        break;
    
    case 1:
        counter_timer_max = 67.5;
        break;
    
    case 2:
        instance_create(gun_left_x, gun_top_y, obj_battle_enemy_attack_starlo_guns_horizontal_gun);
        counter_current++;
        break;
    
    case 3:
        counter_timer_max = 20;
        break;
    
    case 4:
        instance_create(dynamite_left_x, dynamite_y, obj_battle_enemy_attack_starlo_dynamite_vertical);
        counter_current++;
        break;
    
    case 5:
        counter_timer_max = 24;
        break;
    
    case 6:
        instance_create(dynamite_right_x, dynamite_y, obj_battle_enemy_attack_starlo_dynamite_vertical);
        counter_current++;
    
    case 7:
        counter_timer_max = 67.5;
        break;
    
    case 8:
        instance_create(gun_left_x, gun_bot_y, obj_battle_enemy_attack_starlo_guns_horizontal_gun);
        instance_create(gun_right_x, gun_top_y, obj_battle_enemy_attack_starlo_guns_horizontal_gun);
        counter_current++;
        break;
    
    case 9:
        counter_timer_max = 60;
        break;
    
    case 10:
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
