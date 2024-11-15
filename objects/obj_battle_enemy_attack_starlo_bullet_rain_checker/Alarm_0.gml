var box, new_gun;

box = 3154;

if (irandom(1) == 0)
    new_gun = instance_create(choose(box.bbox_left - 25, box.bbox_right + 25), irandom_range(box.bbox_top + 25, box.bbox_bottom - 25), obj_battle_enemy_attack_starlo_bullet_rain_gun);
else
    new_gun = instance_create(irandom_range(box.bbox_left + 25, box.bbox_right - 25), choose(box.bbox_top - 25, box.bbox_bottom + 25), obj_battle_enemy_attack_starlo_bullet_rain_gun);

attack_counter -= 1;

if (attack_counter <= 0)
{
    alarm[1] = 30;
    exit;
}

alarm[0] = 30;
