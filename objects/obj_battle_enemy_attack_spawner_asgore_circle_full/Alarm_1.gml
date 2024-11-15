var attack_offset, battle_box, spawn_dir, bullet_count, bullet_dist, active_bullet, i, xx, yy, bullet;

if (live_call())
    return global.live_result;

attack_offset = 30;
battle_box = 3154;
spawn_dir = random_range(0, 360);
bullet_count = 36;
bullet_dist = 300;
active_bullet = irandom_range(0, bullet_count - 1) * bullet_count;
i = 0;

while (i <= 360)
{
    xx = battle_box.x + lengthdir_x(bullet_dist, spawn_dir + i);
    yy = battle_box.y + lengthdir_y(bullet_dist, spawn_dir + i);
    bullet = instance_create_depth(xx, yy, -300, obj_battle_enemy_attack_asgore_surround_flame);
    bullet.alarm[0] = i / bullet_count;
    bullet.alarm[1] = 1;
    bullet.direction = point_direction(battle_box.x, battle_box.y, bullet.x, bullet.y);
    bullet.bullet_dist = bullet_dist;
    i += (360 / bullet_count);
}
