if (live_call())
    return global.live_result;

var soul = obj_heart_battle_fighting_yellow_final;

with (obj_flowey_battle_phase_2_green_petal)
{
    x = soul.x + lengthdir_x(other.petal_dist, petal_dir);
    y = soul.y + lengthdir_y(other.petal_dist, petal_dir);
    petal_dir += other.spin_speed;
}

if (petal_dist > 0)
    petal_dist -= 3;
else
    instance_destroy();
