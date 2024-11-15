var attack_offset, soul, spawn_dir, bullet_count, bullet_dist, active_bullet, i, xx, yy, bullet;

if (live_call())
    return global.live_result;

attack_offset = 50;
soul = 2979;
spawn_dir = random_range(0, 360);
bullet_count = 12;
bullet_dist = 40;
active_bullet = irandom_range(0, bullet_count - 1) * bullet_count;
i = 0;

while (i <= 360)
{
    xx = soul.x + lengthdir_x(bullet_dist, spawn_dir + i);
    yy = soul.y + lengthdir_y(bullet_dist, spawn_dir + i);
    bullet = instance_create_depth(xx, yy, -300, obj_flowey_1_attack_surround_pellet);
    bullet.alarm[0] = i / bullet_count;
    bullet.alarm[1] = 40;
    bullet.direction = point_direction(soul.x, soul.y, bullet.x, bullet.y);
    bullet.bullet_dist = bullet_dist;
    i += (360 / bullet_count);
}

alarm[1] = attack_offset;
