var shield_perc;

if (live_call())
    return global.live_result;

if (instance_exists(obj_battle_enemy_attack_ceroba_flower_barrage_black_hole) || instance_exists(obj_battle_enemy_attack_ceroba_flower_barrage_black_hole_dmg))
{
    with (obj_heart_battle_fighting_parent)
    {
        x = lerp(x, 320, 0.06);
        y = lerp(y, 320, 0.06);
    }
    
    with (obj_battle_enemy_attack_ceroba_flower_barrage_black_hole)
        image_speed = 0.25;
    
    with (obj_battle_enemy_attack_ceroba_flower_barrage_black_hole_dmg)
        image_speed = 0.25;
}

if (instance_exists(obj_ceroba_phase_2_shield))
{
    shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc >= 1)
    {
        instance_destroy();
        exit;
    }
}

if (!instance_exists(obj_heart_battle_fighting_parent) || obj_heart_battle_fighting_parent.moveable == false)
    instance_destroy();
