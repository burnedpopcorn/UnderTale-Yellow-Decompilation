var i, flame;

if (live_call())
    return global.live_result;

for (i = 0; i <= 180; i += 18)
{
    flame = instance_create_depth(x, y, -100, obj_battle_enemy_attack_asgore_circle_flame);
    flame.direction = 180 + i;
    flame.speed = 3;
}

alarm[0] = spawn_interval;
