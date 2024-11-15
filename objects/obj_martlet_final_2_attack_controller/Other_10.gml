var hp_percentage, random_pos, new_attack;

hp_percentage = global.current_hp_enemy / global.max_hp_enemy;

switch (fmartlet_event_lowhp)
{
    case 0:
        if (hp_percentage <= 0.8)
        {
            fmartlet_event_lowhp = 1;
            global.attack_cycle = 40;
            exit;
        }
        
        break;
    
    case 1:
        if (hp_percentage <= 0.6)
        {
            fmartlet_event_lowhp = 2;
            global.attack_cycle = 41;
            exit;
        }
        
        break;
    
    case 2:
        if (hp_percentage <= 0.4)
        {
            fmartlet_event_lowhp = 3;
            global.attack_cycle = 42;
            exit;
        }
        
        break;
    
    case 3:
        if (hp_percentage <= 0.2)
        {
            fmartlet_event_lowhp = 4;
            global.attack_cycle = 43;
            exit;
        }
        
        break;
}

if (ds_list_size(fmartlet_atpool) == 0)
    event_user(1);

random_pos = irandom(ds_list_size(fmartlet_atpool) - 1);
new_attack = ds_list_find_value(fmartlet_atpool, random_pos);
global.attack_cycle = new_attack;
ds_list_delete(fmartlet_atpool, random_pos);
