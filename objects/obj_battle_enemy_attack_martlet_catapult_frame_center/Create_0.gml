id_frame_stack = global.id_store;
global.id_store = id;
instance_create(x, y, obj_battle_enemy_attack_martlet_catapult_arm);
id_arm = global.id_store;
global.id_store = id;
disjoint_x = x - id_frame_stack.x;
disjoint_y = y - id_frame_stack.y;
