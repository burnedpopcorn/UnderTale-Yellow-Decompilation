function scr_enemy_timer_attacks_energy_balls()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (enemy_attack == "Energy Balls" && !instance_exists(obj_battle_enemy_attack_energy_balls_creator))
        instance_create(0, 0, obj_battle_enemy_attack_energy_balls_creator);
}
