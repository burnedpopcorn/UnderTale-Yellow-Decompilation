var counter_timer_max, player_soul;

counter_timer_max = 0;
player_soul = 2979;

switch (counter_current)
{
    case 0:
        instance_create(player_soul.x, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        
        if (global.battle_phase == 2)
        {
            instance_create(player_soul.x, player_soul.y - 58, obj_battle_enemy_attack_ceroba_diamond);
            instance_create(player_soul.x, player_soul.y + 58, obj_battle_enemy_attack_ceroba_diamond);
        }
        
        counter_current++;
        break;
    
    case 1:
        counter_timer_max = 25;
        break;
    
    case 2:
        instance_create(player_soul.x, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        counter_current++;
        break;
    
    case 3:
        counter_timer_max = 25;
        break;
    
    case 4:
        instance_create(player_soul.x, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        
        if (global.battle_phase == 2)
        {
            instance_create(player_soul.x - 58, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
            instance_create(player_soul.x + 58, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        }
        
        counter_current++;
        break;
    
    case 5:
        counter_timer_max = 25;
        break;
    
    case 6:
        instance_create(320, player_soul.y, obj_battle_enemy_attack_ceroba_beam_horizontal);
        counter_current++;
        break;
    
    case 7:
        counter_timer_max = 25;
        break;
    
    case 8:
        instance_create(player_soul.x, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        
        if (global.battle_phase == 2)
        {
            instance_create(player_soul.x, player_soul.y - 58, obj_battle_enemy_attack_ceroba_diamond);
            instance_create(player_soul.x, player_soul.y + 58, obj_battle_enemy_attack_ceroba_diamond);
            instance_create(player_soul.x - 58, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
            instance_create(player_soul.x + 58, player_soul.y, obj_battle_enemy_attack_ceroba_diamond);
        }
        
        counter_current++;
        break;
    
    case 9:
        counter_timer_max = 25;
        break;
    
    case 10:
        instance_create(player_soul.x, 320, obj_battle_enemy_attack_ceroba_beam_vertical);
        instance_create(320, player_soul.y, obj_battle_enemy_attack_ceroba_beam_horizontal);
        counter_current++;
        break;
    
    case 11:
        counter_timer_max = 40;
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
