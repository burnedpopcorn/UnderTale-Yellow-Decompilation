function scr_enemy_timer_attacks_boulders()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (enemy_attack == "Falling Boulders" && !instance_exists(obj_battle_enemy_attack_falling_boulders_creator))
        instance_create(0, 0, obj_battle_enemy_attack_falling_boulders_creator);
}
