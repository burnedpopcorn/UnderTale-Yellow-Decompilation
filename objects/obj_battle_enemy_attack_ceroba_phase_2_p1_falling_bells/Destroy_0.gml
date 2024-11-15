var shield_perc;

if (live_call())
    return global.live_result;

instance_destroy(obj_battle_enemy_attack_ceroba_phase2_bell);
instance_destroy(obj_attack_ceroba_bell_ring_orange);
instance_destroy(obj_attack_ceroba_bell_ring_blue);

if (instance_exists(obj_ceroba_phase_2_shield))
{
    shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc < 1)
    {
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
    }
}
