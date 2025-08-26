switch (scene)
{
    case 0:
        if (obj_heart_battle_fighting_parent.movement_mode == 2)
            cutscene_advance();
        
        break;
    
    case 1:
        var laser = instance_create_depth(320, 320, -1000, obj_battle_enemy_attack_axis_orange_laser);
        laser.direction = 0;
        alarm[0] = (90 / laser.movement_sin_inc) + 20;
        cutscene_advance();
        break;
}
