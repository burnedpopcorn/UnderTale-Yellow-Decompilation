if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var ball_offset = 30;
var bomb = -4;

switch (attack_tick)
{
    case 30:
        bomb = instance_create_depth(battle_box.x, battle_box.bbox_top - 30, -100, obj_battle_enemy_attack_axis_bomb_geno);
        break;
    
    case 70:
        var laser = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.vspeed = -3;
        break;
    
    case 100:
        var laser = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_battle_enemy_attack_axis_orange_laser_geno);
        laser.hspeed = 3;
        laser.image_angle = 90;
        break;
    
    case 110:
        var laser = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.vspeed = -3;
        break;
    
    case 140:
        bomb = instance_create_depth(battle_box.bbox_right + 20, battle_box.y - 30, -100, obj_battle_enemy_attack_axis_bomb_geno);
        break;
    
    case 160:
        var laser = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.hspeed = 3;
        laser.image_angle = 90;
        break;
    
    case 190:
        bomb = instance_create_depth(battle_box.bbox_left - 20, battle_box.y + 30, -100, obj_battle_enemy_attack_axis_bomb_geno);
        break;
    
    case 280:
        instance_destroy();
        break;
}

if (bomb != -4)
{
    if (bomb.x < battle_box.bbox_left)
        bomb.gravity_direction = 0;
    
    if (bomb.x > battle_box.bbox_right)
        bomb.gravity_direction = 180;
    
    if (bomb.y > battle_box.bbox_bottom)
        bomb.gravity_direction = 90;
    
    if (bomb.y < battle_box.bbox_top)
        bomb.gravity_direction = 270;
}

attack_tick += 1;
