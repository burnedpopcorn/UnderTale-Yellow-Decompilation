if (live_call())
    return global.live_result;

var attack_offset = 50;
var soul = obj_heart_battle_fighting_parent;
var spawn_dir = random_range(0, 360);
var bullet_count = 12;
var bullet_dist = 40;
var active_bullet = irandom_range(0, bullet_count - 1) * bullet_count;
var i = 0;

while (i <= 360)
{
    var xx = soul.x + lengthdir_x(bullet_dist, spawn_dir + i);
    var yy = soul.y + lengthdir_y(bullet_dist, spawn_dir + i);
    var bullet = instance_create_depth(xx, yy, -300, obj_flowey_1_attack_surround_pellet);
    bullet.alarm[0] = i / bullet_count;
    bullet.alarm[1] = 40;
    bullet.direction = point_direction(soul.x, soul.y, bullet.x, bullet.y);
    bullet.bullet_dist = bullet_dist;
    i += (360 / bullet_count);
}

alarm[1] = attack_offset;
