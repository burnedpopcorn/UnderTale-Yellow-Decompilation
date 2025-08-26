function scr_battle_core_directory_enemy_attack_end()
{
    var battle_enemy_name = global.battle_enemy_name;
    
    if (battle_enemy_name == "el bailador")
    {
        var new_return = script_execute(scr_end_enemy_attacking_bailador_geno);
        return new_return;
    }
    
    if (battle_enemy_name == "guardener")
    {
        var new_return = script_execute(scr_end_enemy_attacking_guardener);
        return new_return;
    }
    
    if (battle_enemy_name == "axis")
    {
        var new_return = script_execute(scr_end_enemy_attacking_axis);
        return new_return;
    }
    
    if (battle_enemy_name == "axis genocide")
    {
        var new_return = script_execute(scr_end_enemy_attacking_axis_geno);
        return new_return;
    }
    
    if (battle_enemy_name == "ceroba")
    {
        var new_return = script_execute(scr_end_enemy_attacking_ceroba);
        return new_return;
    }
    
    if (battle_enemy_name == "macro froggit")
    {
        var new_return = script_execute(scr_end_enemy_attacking_macro);
        return new_return;
    }
    
    return false;
}
