var battle_flag = global.hotland_flag[2];

if (instance_exists(obj_ceroba_phase_2_shield) && obj_ceroba_phase_2_shield.scene >= 9)
    exit;

switch (battle_flag)
{
    case 0:
        global.attack_cycle += 1;
        
        if (global.attack_cycle > global.attack_cycle_max)
            global.attack_cycle = 1;
        
        break;
    
    case 1:
        global.attack_cycle += 1;
        
        if (global.attack_cycle > global.attack_cycle_max)
            global.attack_cycle = 11;
        
        break;
    
    case 2:
        global.attack_cycle = 18;
        break;
    
    case 3:
        global.attack_cycle = 18;
        break;
}
