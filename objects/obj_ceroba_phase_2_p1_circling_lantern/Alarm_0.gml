if (live_call())
    return global.live_result;

var bullet_number = 1;
var bullet_spawn_timer = 22;
var wave_spawn_timer = bullet_spawn_timer * 3;
var bullet_speed = 5;
var bullet_offset = 20;
var soul = obj_heart_battle_fighting_parent;
bullet_spawn_direction = point_direction(x, y, soul.x, soul.y);
var fireball = instance_create_depth(x, y, depth + 1, obj_ceroba_attack_fireball);
fireball.direction = bullet_spawn_direction;
fireball.speed = bullet_speed;
image_xscale = 1.5;
image_yscale = 1.5;
alarm[0] = bullet_spawn_timer;
