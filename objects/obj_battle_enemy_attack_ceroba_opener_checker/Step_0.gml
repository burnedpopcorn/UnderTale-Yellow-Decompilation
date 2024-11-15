var explosion;

switch (counter_current)
{
    case 0:
        instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_ceroba_diamond);
        counter_timer = 15;
        counter_current++;
        break;
    
    case 1:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_create(320, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        counter_timer = 20;
        counter_current++;
        break;
    
    case 2:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_create(260, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(380, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        counter_timer = 20;
        counter_current++;
        break;
    
    case 3:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_create(220, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(420, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        counter_timer = 30;
        counter_current++;
        break;
    
    case 4:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_create(320, -30, obj_battle_enemy_attack_ceroba_opener_spray_spawner);
        counter_timer = 45;
        counter_current++;
        break;
    
    case 5:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_create(320, obj_dialogue_box_battle_transformation_any.bbox_bottom - 28, obj_battle_enemy_attack_ceroba_beam_horizontal);
        counter_timer = 15;
        counter_current++;
        break;
    
    case 6:
        if (instance_exists(obj_battle_enemy_attack_ceroba_opener_spray_spawner))
            exit;
        
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        explosion = instance_create(320, obj_dialogue_box_battle_transformation_any.bbox_bottom + 60, obj_battle_enemy_attack_ceroba_flower_exploding);
        
        with (explosion)
            ring_object = 2727;
        
        counter_timer = 30;
        counter_current++;
        break;
    
    case 7:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_ceroba_diamond);
        counter_timer = 35;
        counter_current++;
        break;
    
    case 8:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_create(obj_heart_battle_fighting_parent.x, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(320, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_ceroba_beam_horizontal);
        counter_timer = 45;
        counter_current++;
        break;
    
    case 9:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_destroy();
        exit;
        break;
}
