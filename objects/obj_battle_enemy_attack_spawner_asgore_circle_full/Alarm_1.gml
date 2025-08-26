if (live_call())
    return global.live_result;

var attack_offset = 30;
var battle_box = obj_dialogue_box_battle_transformation_any;
var spawn_dir = random_range(0, 360);
var bullet_count = 36;
var bullet_dist = 300;
var active_bullet = irandom_range(0, bullet_count - 1) * bullet_count;
var i = 0;

while (i <= 360)
{
    var xx = battle_box.x + lengthdir_x(bullet_dist, spawn_dir + i);
    var yy = battle_box.y + lengthdir_y(bullet_dist, spawn_dir + i);
    var bullet = instance_create_depth(xx, yy, -300, obj_battle_enemy_attack_asgore_surround_flame);
    bullet.alarm[0] = i / bullet_count;
    bullet.alarm[1] = 1;
    bullet.direction = point_direction(battle_box.x, battle_box.y, bullet.x, bullet.y);
    bullet.bullet_dist = bullet_dist;
    i += (360 / bullet_count);
}
