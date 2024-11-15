var hp_percentage, random_pos, new_attack;

hp_percentage = global.current_hp_enemy / global.max_hp_enemy;

switch (fmartlet_event_lowhp)
{
    case 0:
        if (hp_percentage <= 0.75)
        {
            fmartlet_event_lowhp = 1;
            global.attack_cycle = 30;
            exit;
        }
        
        break;
    
    case 1:
        if (hp_percentage <= 0.5)
        {
            fmartlet_event_lowhp = 2;
            global.attack_cycle = 31;
            exit;
        }
        
        break;
    
    case 2:
        if (hp_percentage <= 0.3)
        {
            fmartlet_event_lowhp = 3;
            global.attack_cycle = 32;
            exit;
        }
        
        break;
    
    case 3:
        if (hp_percentage <= 0.15)
        {
            fmartlet_event_lowhp = 4;
            global.attack_cycle = 33;
            exit;
        }
        
        break;
}

if (ds_list_size(fmartlet_atpool) == 0)
{
    event_user(1);
    random_pos = irandom(ds_list_size(fmartlet_sppool) - 1);
    new_attack = ds_list_find_value(fmartlet_sppool, random_pos);
    global.attack_cycle = new_attack;
    ds_list_delete(fmartlet_sppool, random_pos);
    
    if (ds_list_size(fmartlet_sppool) == 0)
        event_user(2);
    
    exit;
}

random_pos = irandom(ds_list_size(fmartlet_atpool) - 1);
new_attack = ds_list_find_value(fmartlet_atpool, random_pos);
global.attack_cycle = new_attack;
ds_list_delete(fmartlet_atpool, random_pos);
