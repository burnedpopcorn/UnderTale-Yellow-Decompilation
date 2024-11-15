var laser;

switch (scene)
{
    case 0:
        if (obj_heart_battle_fighting_parent.movement_mode == 1)
            cutscene_advance();
        
        break;
    
    case 1:
        laser = instance_create_depth(320, 320, -1000, obj_battle_enemy_attack_axis_blue_laser);
        laser.direction = 90;
        alarm[0] = (180 / laser.movement_sin_inc) + 20;
        cutscene_advance();
        break;
}
