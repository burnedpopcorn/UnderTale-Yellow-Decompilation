var bullet = instance_create_depth(spawner.x, spawner.y, spawner.depth - 1, obj_battle_enemy_attack_bigfrog_fly_bullet);
bullet.direction = point_direction(bullet.x, bullet.y, x, y);
instance_destroy();
