var random_number, fcreate_x, fcreate_y;

x_store = 0;
y_store = 0;
angle_store = 0;
x_center = obj_dialogue_box_battle_transformation_any.x;
y_center = obj_dialogue_box_battle_transformation_any.y;
sign_modifier_radius = 1;
time_elapsed_radius = 0;
time_max_radius = 30;
time_increase_radius = 1;
max_rise_radius = 20;
feather_angle_radius = (obj_dialogue_box_battle_transformation_any.bbox_right - x_center) + 60;
feather_angle_master = 0;
feather_angle_speed = 6;

if (!instance_exists(obj_martlet_body))
    random_number = irandom_range(1, 3);
else
    random_number = irandom_range(1, 5);

switch (random_number)
{
    case 1:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_1;
        break;
    
    case 2:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_2;
        break;
    
    case 3:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_3;
        break;
    
    case 4:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_4;
        break;
    
    case 5:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_5;
        break;
    
    default:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_1;
}

fcreate_count = 8;
fcreate_decrease = 360 / fcreate_count;
fcreate_angle_diff = 0;

for (i = 0; i < fcreate_count; i += 1)
{
    fcreate_x = x_center + (feather_angle_radius * cos(degtorad(fcreate_angle_diff)));
    fcreate_y = y_center - (feather_angle_radius * sin(degtorad(fcreate_angle_diff)));
    instance_create(fcreate_x, fcreate_y, obj_battle_enemy_attack_martlet_feather_circle_feather);
    id_feather[i] = global.id_store;
    
    with (id_feather[i])
    {
        sprite_index = obj_battle_enemy_attack_martlet_feather_circle_checker.feather_sprite;
        image_index = 0;
        image_speed = 0;
        image_alpha = 0;
        image_angle = obj_battle_enemy_attack_martlet_feather_circle_checker.fcreate_angle_diff + 90;
        trail_sprite = sprite_index;
    }
    
    fcreate_angle_diff -= fcreate_decrease;
    
    if (fcreate_angle_diff < 0)
        fcreate_angle_diff += 360;
}

scr_get_random_number_order(0, fcreate_count - 1);
feather_launch_counter = 0;
feather_launch_no_loop = false;

if (!instance_exists(obj_martlet_body))
    feather_launch_alarm = 25;
else
    feather_launch_alarm = 40;
