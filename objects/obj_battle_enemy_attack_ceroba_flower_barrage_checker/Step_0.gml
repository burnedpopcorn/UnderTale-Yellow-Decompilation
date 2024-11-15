if (counter_current >= counter_max)
    instance_destroy();

counter_current += 1;

if (instance_exists(obj_battle_enemy_attack_ceroba_flower_barrage_black_hole) || instance_exists(obj_battle_enemy_attack_ceroba_flower_barrage_black_hole_dmg))
{
    with (obj_heart_battle_fighting_parent)
    {
        x = lerp(x, 320, 0.07);
        y = lerp(y, 320, 0.07);
    }
}
