if (!instance_exists(obj_martlet_body))
    sprite_index = spr_battle_enemy_attack_martlet_target_half_axis;

x = obj_battle_enemy_attack_martlet_feather_fall_checker.x_store;
y = obj_battle_enemy_attack_martlet_feather_fall_checker.y_store;
image_angle = obj_battle_enemy_attack_martlet_feather_fall_checker.angle_store;
image_speed = 0.6;
image_index = 0;
geno_target_angle = 0;
id_feather = global.id_store;
global.id_store = id;
