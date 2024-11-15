grav = 1;
vsp = -8;
starting_point = y;

if (object_index == obj_text_damage_count)
{
    if (global.fight_number == 1)
    {
        global.enemy_hit = true;
        global.hit_count += 1;
    }
    else if (global.fight_number == 2)
    {
        global.enemy_hit_2 = true;
        global.hit_count_2 += 1;
    }
    else if (global.fight_number == 3)
    {
        global.enemy_hit_3 = true;
        global.hit_count_3 += 1;
    }
}
else if (object_index == obj_text_miss)
{
    if (global.fight_number == 1)
        global.miss_count += 1;
    else if (global.fight_number == 2)
        global.miss_count_2 += 1;
    else if (global.fight_number == 3)
        global.miss_count_3 += 1;
}
