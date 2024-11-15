if (live_call())
    return global.live_result;

if (counter_current >= counter_max)
    instance_destroy();

counter_current += 1;

with (obj_heart_battle_fighting_parent)
{
    x = lerp(x, 320, 0.06);
    y = lerp(y, 320, 0.06);
}

if (instance_exists(obj_battle_enemy_attack_ceroba_flower_barrage_black_hole))
    obj_battle_enemy_attack_ceroba_flower_barrage_black_hole.image_speed = 0.25;
