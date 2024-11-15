var shield_perc;

if (live_call())
    return global.live_result;

ds_list_clear(position_list);
instance_destroy(obj_ceroba_phase_2_p1_lantern);
instance_destroy(obj_ceroba_phase_2_p1_lantern_recreator);
instance_destroy(obj_ceroba_attack_fireball);

if (instance_exists(obj_ceroba_phase_2_shield))
{
    shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc < 1)
    {
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
    }
}
