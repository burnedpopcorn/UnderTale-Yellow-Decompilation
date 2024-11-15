if (target_radius_deg > 0)
{
    target_radius_deg -= target_radius_dec;
}
else
{
    instance_create(x, y, obj_battle_enemy_attack_starlo_take_aim_shot);
    instance_create(x, y, obj_battle_enemy_attack_starlo_take_aim_shot_collider);
    instance_destroy();
}

target_radius_current = dsin(target_radius_deg);

if (target_draw_alpha < 1)
    target_draw_alpha += 0.25;
