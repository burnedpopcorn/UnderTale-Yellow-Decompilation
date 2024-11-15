if (live_call())
    return global.live_result;

if (instance_exists(obj_battle_enemy_attack_bullet_residue))
    instance_destroy(obj_battle_enemy_attack_bullet_residue);

switch (attack_tick)
{
    case 10:
        alarm[0] = 1;
        break;
    
    case 20:
        alarm[0] = 1;
        break;
    
    case 98:
        instance_create(320, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        break;
    
    case 100:
        spawn_dist = 140;
        alarm[0] = 1;
        break;
    
    case 115:
        with (instance_create_depth(320, room_height + 60, -200, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2725;
        
        break;
    
    case 125:
        alarm[0] = 1;
        break;
    
    case 145:
        with (instance_create_depth(240, room_height + 60, -200, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2725;
        
        break;
    
    case 165:
        with (instance_create_depth(400, room_height + 60, -200, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2727;
        
        break;
    
    case 285:
        instance_destroy();
        break;
}

attack_tick++;
