switch (counter_current)
{
    case 0:
        with (instance_create(320, room_height + 60, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2726;
        
        counter_timer = 35;
        counter_current++;
        break;
    
    case 1:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        with (instance_create(370, room_height + 60, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2728;
        
        counter_timer = 20;
        counter_current++;
        break;
    
    case 2:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        with (instance_create(270, room_height + 60, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2726;
        
        counter_timer = 40;
        counter_current++;
        break;
    
    case 3:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        with (instance_create(250, room_height + 60, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2728;
        
        with (instance_create(390, room_height + 60, obj_battle_enemy_attack_ceroba_jumping_flower))
            ring_object = 2726;
        
        counter_timer = 130;
        counter_current++;
        break;
    
    case 4:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_destroy();
        break;
}
