if (live_call())
    return global.live_result;

if (spawn_direction < 180)
    spawn_direction = irandom_range(180, 360);
else
    spawn_direction = irandom_range(0, 180);

spawn_x = lengthdir_x(spawn_distance, spawn_direction);
spawn_y = lengthdir_y(spawn_distance, spawn_direction);
instance_create_depth(soul.x + spawn_x, soul.y + spawn_y, depth - 1, obj_flowey_battle_gray_gun);

if (spawn_number > 0)
{
    alarm[0] = spawn_delay;
    spawn_number--;
}
else
{
    instance_destroy();
}