var bullet_number, bullet_spawn_timer, wave_spawn_timer, bullet_speed, bullet_offset, soul, fireball;

if (live_call())
    return global.live_result;

bullet_number = 1;
bullet_spawn_timer = 12;
wave_spawn_timer = bullet_spawn_timer * 5;
bullet_speed = 4;
bullet_offset = 20;
soul = 2979;
bullet_spawn_direction = point_direction(x, y, soul.x, soul.y);
fireball = instance_create_depth(x, y, depth + 1, obj_ceroba_attack_fireball);
fireball.direction = bullet_spawn_direction;
fireball.speed = bullet_speed;
image_xscale = 1.5;
image_yscale = 1.5;
shot_count -= 1;

if (shot_count > 0)
{
    alarm[0] = bullet_spawn_timer;
}
else
{
    shot_count = 3;
    alarm[0] = wave_spawn_timer;
}
