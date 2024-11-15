if (counter_current >= counter_max)
{
    instance_destroy();
    exit;
}

counter_current += 1;

if (instance_exists(obj_battle_enemy_attack_ceroba_fire_circle_fireball))
    obj_battle_enemy_attack_ceroba_fire_circle_fireball.image_blend = c_red;
