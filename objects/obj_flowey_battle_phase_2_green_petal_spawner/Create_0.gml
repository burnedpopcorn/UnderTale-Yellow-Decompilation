if (live_call())
    return global.live_result;

petal_count = 6;
petal_speed = 5;
petal_dist = 90;
spin_speed = 2;
var soul = obj_heart_battle_fighting_yellow_final;
var i = 0;

while (i < 360)
{
    var petal = instance_create_depth(soul.x + lengthdir_x(petal_dist, i), soul.y + lengthdir_y(petal_dist, i), depth - 1, obj_flowey_battle_phase_2_green_petal);
    petal.petal_dir = i;
    i += (360 / petal_count);
}
