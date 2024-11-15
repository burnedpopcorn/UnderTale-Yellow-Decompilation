var xx, yy, dir_mult, i, spawn_dir, spawn_x, spawn_y, bul;

if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
xx = obj_heart_battle_fighting_parent.x;
yy = obj_heart_battle_fighting_parent.y;
dir_mult = 360/7;

for (i = 0; i < 7; i++)
{
    spawn_dir = i * dir_mult;
    spawn_x = xx + lengthdir_x(100, spawn_dir);
    spawn_y = yy + lengthdir_y(100, spawn_dir);
    bul = instance_create_depth(spawn_x, spawn_y, -100, obj_flowey_battle_phase_2_gray_pellet);
    bul.direction = point_direction(bul.x, bul.y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
    bul.image_alpha = 0 - (i * 0.1);
    bul.speed = 0;
    bul.alarm[0] = 45;
}
