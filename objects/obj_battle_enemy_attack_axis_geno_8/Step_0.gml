if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var ball_offset = 30;

switch (attack_tick)
{
    case 30:
        var variant = choose(1, 2);
        
        if (variant == 1)
        {
            attack_turret[0] = instance_create_depth(battle_box.x - 15, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[1] = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[2] = instance_create_depth(battle_box.x + 15, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_turret_geno);
        }
        else
        {
            attack_turret[0] = instance_create_depth(battle_box.x - 15, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[1] = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[2] = instance_create_depth(battle_box.x + 15, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_turret_geno);
        }
        
        variant = choose(1, 2);
        
        if (variant == 1)
        {
            attack_turret[3] = instance_create_depth(battle_box.bbox_left - 20, battle_box.y - 15, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[4] = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[5] = instance_create_depth(battle_box.bbox_left - 20, battle_box.y + 15, -100, obj_battle_enemy_attack_axis_turret_geno);
        }
        else
        {
            attack_turret[3] = instance_create_depth(battle_box.bbox_right + 20, battle_box.y - 15, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[4] = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_battle_enemy_attack_axis_turret_geno);
            attack_turret[5] = instance_create_depth(battle_box.bbox_right + 20, battle_box.y + 15, -100, obj_battle_enemy_attack_axis_turret_geno);
        }
        
        for (var i = 0; i < array_length(attack_turret); i++)
        {
            with (attack_turret[i])
            {
                if (x < battle_box.bbox_left)
                    direction = 0;
                
                if (x > battle_box.bbox_right)
                    direction = 180;
                
                if (y > battle_box.bbox_bottom)
                    direction = 90;
                
                if (y < battle_box.bbox_top)
                    direction = 270;
            }
        }
        
        break;
    
    case 50:
    case 57:
        with (obj_battle_enemy_attack_axis_turret_geno)
        {
            if (other.attack_turret[other.excluded_number] != id && other.attack_turret[other.excluded_number_2] != id)
                alarm[1] = 1;
        }
        
        excluded_number = irandom_range(0, 2);
        excluded_number_2 = irandom_range(3, 5);
        break;
    
    case 64:
        with (obj_battle_enemy_attack_axis_turret_geno)
        {
            if (other.attack_turret[other.excluded_number] != id && other.attack_turret[other.excluded_number_2] != id)
                alarm[1] = 1;
        }
        
        break;
    
    case 90:
        with (obj_battle_enemy_attack_axis_turret_geno)
        {
            if (other.attack_turret[other.excluded_number] != id && other.attack_turret[other.excluded_number_2] != id)
                scene = 2;
            else
                scene = 4;
        }
        
        break;
    
    case 110:
        attack_count -= 1;
        
        if (attack_count > 0)
            attack_tick = 29;
        
        break;
    
    case 140:
        instance_destroy();
        break;
}

attack_tick += 1;
