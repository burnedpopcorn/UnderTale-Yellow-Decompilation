if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
var xx = obj_heart_battle_fighting_parent.x;
var yy = obj_heart_battle_fighting_parent.y;
var dir_mult = 360/7;

for (var i = 0; i < 7; i++)
{
    var spawn_dir = i * dir_mult;
    var spawn_x = xx + lengthdir_x(100, spawn_dir);
    var spawn_y = yy + lengthdir_y(100, spawn_dir);
    var bul = instance_create_depth(spawn_x, spawn_y, -100, obj_flowey_battle_phase_2_gray_pellet);
    bul.direction = point_direction(bul.x, bul.y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
    bul.image_alpha = 0 - (i * 0.1);
    bul.speed = 0;
    bul.alarm[0] = 45;
}
