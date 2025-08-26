var battle_box = obj_dialogue_box_battle_transformation_any;
var spawn_dir = irandom_range(0, 359);
var spawn_x = 320 + lengthdir_x(250, spawn_dir);
var spawn_y = 320 + lengthdir_y(250, spawn_dir);
instance_create_depth(spawn_x, spawn_y, -100, obj_battle_enemy_attack_axis_energy_ball);
alarm[0] = attack_interval;
