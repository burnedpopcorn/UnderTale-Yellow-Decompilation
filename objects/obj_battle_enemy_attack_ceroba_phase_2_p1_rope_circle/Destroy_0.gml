var shield_perc;

if (live_call())
    return global.live_result;

instance_destroy(obj_ceroba_attack_rope_circle_mask);
instance_destroy(obj_rope_circle_part);
instance_destroy(obj_ceroba_attack_rope_circle_mask);
instance_destroy(obj_rope_circle_part_destroy);

if (instance_exists(obj_ceroba_phase_2_shield))
{
    shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc < 1)
    {
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
    }
}
