var battle_box, dir, dir_inc, real_turret, i, distance;

if (live_call())
    return global.live_result;

battle_box = 3154;
dir = irandom_range(0, 359);
dir_inc = 360/7;
real_turret = irandom_range(0, 6);

for (i = 0; i < 7; i++)
{
    distance = irandom_range(100, 140);
    
    if (i != real_turret)
        instance_create_depth(battle_box.x + lengthdir_x(distance, dir + (dir_inc * i)), battle_box.y + lengthdir_y(distance, dir + (dir_inc * i)), -100, obj_battle_enemy_attack_axis_turret_fake);
    else
        instance_create_depth(battle_box.x + lengthdir_x(distance, dir + (dir_inc * i)), battle_box.y + lengthdir_y(distance, dir + (dir_inc * i)), -100, obj_battle_enemy_attack_axis_turret_real);
}

alarm[1] = attack_offset;
turret_wave--;

if (turret_wave <= 0)
    instance_destroy();
