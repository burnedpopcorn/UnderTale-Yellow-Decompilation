var soul, box;

soul = 2980;
box = 3154;

if (starlo_take_aim_shots_current < starlo_take_aim_shots_max)
{
    if ((starlo_take_aim_shots_current % 2) == 0)
        instance_create(choose(box.bbox_right + 60, box.bbox_left - 60), soul.y, obj_battle_enemy_attack_starlo_guns_horizontal_gun);
    else
        instance_create(soul.x, choose(box.bbox_top - 60, box.bbox_bottom + 60), obj_battle_enemy_attack_starlo_guns_vertical_gun);
}
else if (starlo_take_aim_fade_out == false)
{
    starlo_take_aim_fade_out = true;
}

starlo_take_aim_shots_current += 1;
alarm[0] = starlo_take_aim_interval;
