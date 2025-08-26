var spawn_dir = irandom_range(0, 360);
var spawn_dist = 200;
var spawn_x = obj_heart_battle_fighting_parent.x + lengthdir_x(spawn_dist, spawn_dir);
var spawn_y = obj_heart_battle_fighting_parent.y + lengthdir_y(spawn_dist, spawn_dir);
instance_create_depth(spawn_x, spawn_y, -100, obj_flowey_battle_phase_2_organic_virus);
