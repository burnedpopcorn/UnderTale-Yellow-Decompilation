switch (counter_current)
{
    case 0:
        instance_create(350, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(395, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(440, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        
        with (obj_battle_enemy_attack_ceroba_beam_vertical)
            attack_beam_timer = 150;
        
        counter_timer = 10;
        counter_current++;
        break;
    
    case 1:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        if (!instance_exists(obj_battle_enemy_attack_ceroba_split_spray_spawner))
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 40, -60, obj_battle_enemy_attack_ceroba_split_spray_spawner);
        
        counter_timer = 160;
        counter_current++;
        break;
    
    case 2:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        if (instance_exists(obj_battle_enemy_attack_ceroba_split_spray_spawner))
            obj_battle_enemy_attack_ceroba_split_spray_spawner.current_position = 3;
        
        counter_timer = 15;
        counter_current++;
        break;
    
    case 3:
        instance_create(290, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(245, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(200, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        
        with (obj_battle_enemy_attack_ceroba_beam_vertical)
            attack_beam_timer = 50;
        
        counter_timer = 85;
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
