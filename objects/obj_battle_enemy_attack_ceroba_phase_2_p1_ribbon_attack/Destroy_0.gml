if (live_call())
    return global.live_result;

instance_destroy(obj_ceroba_phase_2_p1_ribbon_lantern);
instance_destroy(obj_ceroba_attack_fireball);
instance_destroy(obj_ceroba_ribbon_base);
instance_destroy(obj_verlet_rope_generator);

if (instance_exists(obj_ceroba_phase_2_shield))
{
    var shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc < 1)
    {
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
    }
}
