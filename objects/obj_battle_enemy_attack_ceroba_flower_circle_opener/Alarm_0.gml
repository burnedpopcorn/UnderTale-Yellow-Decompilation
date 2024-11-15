if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_ceroba_flower_circle_flower)
{
    if (state == 0 && bullet_spawner == other.id)
        state = 1;
}
