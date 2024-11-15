if (aim_target == -4)
    exit;

x = aim_target.x;
y = aim_target.y;

if (target_radius_deg > 0)
{
    target_radius_deg -= 4;
}
else
{
    instance_create(x, y, obj_battle_enemy_attack_starlo_take_aim_shot);
    instance_create(x, y, obj_battle_enemy_attack_starlo_take_aim_shot_collider);
    instance_destroy();
    instance_destroy(aim_target);
}

target_radius_current = dsin(target_radius_deg);

if (target_draw_alpha < 1)
    target_draw_alpha += 0.25;
