var box, seed;

box = 3154;
seed = instance_create_depth(grass_spawn_x, box.bbox_bottom - 4, obj_heart_battle_fighting_parent.depth - 3, obj_battle_enemy_attack_guardener_seed_grow);
seed.direction = 90;
grass_spawn_x += grass_spawn_inc;
