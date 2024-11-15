if (live_call())
    return global.live_result;

instance_create_depth(-20, road_1.y + 38, -100, obj_battle_enemy_attack_macro_car);
alarm[0] = car_delay;
car_count -= 1;

if (car_count <= 5 && frog_noloop == false)
{
    if (irandom(spawn_probability) == 0)
    {
        alarm[2] = 15;
        frog_noloop = true;
        car_count += 2;
    }
    else
    {
        spawn_probability -= 10;
    }
}

if (car_count <= 0)
    instance_destroy();
