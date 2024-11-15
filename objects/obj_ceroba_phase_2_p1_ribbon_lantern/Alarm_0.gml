var bullet_spawn_timer, bullet_speed, fireball;

if (live_call())
    return global.live_result;

bullet_spawn_timer = 30;
bullet_speed = 3;
bullet_spawn_direction = 0;

if (x > 320)
    bullet_spawn_direction = 180;

fireball = instance_create_depth(x, y, depth + 1, obj_ceroba_attack_fireball);
fireball.direction = bullet_spawn_direction;
fireball.speed = bullet_speed;
image_xscale = 1.5;
image_yscale = 1.5;
alarm[0] = bullet_spawn_timer;
