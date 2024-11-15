var flower_count, i, bullet;

if (live_call())
    return global.live_result;

flower_count = 5;
spawn_interval -= 1;

if (spawn_interval <= 0 && y > 0 && y < room_height)
{
    for (i = 0; i < flower_count; i++)
    {
        bullet = instance_create_depth(x, y, depth - 1, obj_battle_enemy_attack_flowey_spiral_attack_10);
        bullet.move_spd = 5;
        bullet.spawner = id;
        bullet.direction = ((i + 1) * (360 / flower_count)) + spawn_dir;
        spawn_dir += spawn_dir_inc;
    }
    
    spawn_interval = spawn_interval_max;
}
