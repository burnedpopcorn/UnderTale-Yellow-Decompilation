if (liquid_hcurrent < liquid_hdest)
{
    liquid_hcurrent += liquid_speed;
    
    if (liquid_hcurrent > liquid_hdest)
        liquid_hcurrent = liquid_hdest;
    
    with (obj_battle_enemy_attack_bowll_liquid_top_leader)
        y = default_y - obj_battle_enemy_attack_bowll_liquid_generator.liquid_hcurrent;
}
