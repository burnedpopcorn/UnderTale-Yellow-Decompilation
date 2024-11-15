with (obj_battle_enemy_attack_martlet_wing_gust_junk)
    instance_destroy();

if (instance_exists(obj_martlet_body))
{
    with (obj_martlet_body)
    {
        id_martlet_wing_gust = -4;
        event_user(0);
    }
}
else if (instance_exists(obj_martlet_g_body))
{
    with (obj_martlet_g_body)
    {
        id_martlet_wing_gust = -4;
        event_user(0);
    }
}

with (obj_battle_enemy_attack_martlet_wind_gust_wind)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
{
    if (instance_exists(obj_martlet_body) && global.enemy_mode == 5 && global.turns_passed == 4)
        script_execute(scr_start_during_attack_dialogue_martlet_pacifist);
    else
        event_user(0);
}
