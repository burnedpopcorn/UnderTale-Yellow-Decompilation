if (waiter == 0)
    exit;

switch (scene)
{
    case 0:
        while (instance_number(obj_battle_enemy_attack_fpellets) < 5)
            instance_create(obj_battle_flowey_body_1.x, obj_battle_flowey_body_1.y, obj_battle_enemy_attack_fpellets);
        
        cutscene_advance();
        break;
}
