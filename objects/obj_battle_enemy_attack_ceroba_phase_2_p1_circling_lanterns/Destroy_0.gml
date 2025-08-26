instance_destroy(obj_ceroba_phase_2_p1_circling_lantern);
instance_destroy(obj_ceroba_attack_fireball);

if (instance_exists(obj_ceroba_phase_2_shield))
{
    var shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc < 1)
    {
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
    }
}
