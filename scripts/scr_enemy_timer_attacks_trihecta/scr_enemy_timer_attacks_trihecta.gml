function scr_enemy_timer_attacks_trihecta()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Trihecta Circle Bounce")
            script_execute(scr_enemy_attack_trihecta_circle_bounce);
        else if (enemy_attack == "Trihecta Circle Reflect")
            script_execute(scr_enemy_attack_trihecta_circle_reflect);
        else if (enemy_attack == "Trihecta Circle Stack")
            script_execute(scr_enemy_attack_trihecta_circle_stack);
    }
}
