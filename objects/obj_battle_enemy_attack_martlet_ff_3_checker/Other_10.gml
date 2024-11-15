instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_martlet_ff_3_target);
fcreate_count += 1;

if (fcreate_count < fcreate_max)
{
    alarm[0] = fcreate_alarm;
    fcreate_alarm -= fcreate_minus;
}
