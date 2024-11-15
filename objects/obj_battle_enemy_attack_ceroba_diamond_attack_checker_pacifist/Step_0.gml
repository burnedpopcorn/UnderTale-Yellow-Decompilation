var counter_timer_max, player_soul, battle_box;

if (live_call())
    return global.live_result;

counter_timer_max = 0;
player_soul = 2979;
battle_box = 3154;

switch (counter_current)
{
    case 0:
        instance_create_depth(320, battle_box.bbox_top - 80, -400, obj_battle_enemy_attack_ceroba_flower_spray_spawner_pacifist);
        counter_current++;
        break;
    
    case 1:
        counter_timer_max = 15;
        break;
    
    case 2:
        instance_create(player_soul.x, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        counter_current++;
        break;
    
    case 3:
        counter_timer_max = 100;
        break;
    
    case 4:
        instance_create_depth(choose(battle_box.bbox_left - 80, battle_box.bbox_right + 80), battle_box.bbox_top - 80, -400, obj_battle_enemy_attack_ceroba_flower_spray_spawner_pacifist);
        counter_current++;
        break;
    
    case 5:
        counter_timer_max = 1;
        break;
    
    case 6:
        instance_create(player_soul.x, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        counter_current++;
        break;
    
    case 7:
        counter_timer_max = 100;
        break;
    
    case 8:
        instance_create_depth(choose(battle_box.bbox_left - 80, battle_box.bbox_right + 80), battle_box.bbox_top - 80, -400, obj_battle_enemy_attack_ceroba_flower_spray_spawner_pacifist);
        counter_current++;
        break;
    
    case 9:
        counter_timer_max = 1;
        break;
    
    case 10:
        instance_create(player_soul.x, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        counter_current++;
        break;
    
    case 11:
        counter_timer_max = 100;
        break;
    
    case 12:
        if (counter_timer > 0)
        {
            counter_timer--;
            exit;
        }
        
        instance_destroy();
        break;
}

if (counter_timer_max == 0)
    exit;

if (counter_timer < counter_timer_max)
{
    counter_timer++;
}
else
{
    counter_timer = 0;
    counter_current += 1;
}
