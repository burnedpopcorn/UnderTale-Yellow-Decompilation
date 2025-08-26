if (live_call())
    return global.live_result;

var flame = instance_create_depth(x, y, -100, obj_battle_enemy_attack_asgore_sinusoid_flame);
flame.vspeed = bullet_speed;
flame.spawner_id = id;
var flame_2 = instance_create_depth(x, y, -100, obj_battle_enemy_attack_asgore_sinusoid_flame);
flame_2.x_dir = -1;
flame_2.vspeed = bullet_speed;
flame_2.spawner_id = id;
bullet_count--;

if (bullet_count > 0)
    alarm[0] = 2;
