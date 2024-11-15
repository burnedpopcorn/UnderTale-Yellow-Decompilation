if (image_alpha < 1)
{
    image_alpha += fade_in_speed;
    
    if (image_alpha > 1)
        image_alpha = 1;
}

if (instance_exists(obj_battle_enemy_attack_bowll_liquid_top_slave))
{
    with (obj_battle_enemy_attack_bowll_liquid_top_slave)
        event_user(0);
}

if (instance_exists(obj_battle_enemy_attack_bowll_liquid_bottom))
{
    with (obj_battle_enemy_attack_bowll_liquid_bottom)
        event_user(0);
}
