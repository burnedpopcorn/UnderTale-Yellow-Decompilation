var attack_instance;

if (live_call())
    return global.live_result;

switch (attack_tick)
{
    case 30:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 10;
        break;
    
    case 60:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.image_xscale = -1;
        attack_instance.attack_delay = 10;
        break;
    
    case 100:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 3;
        break;
    
    case 115:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.image_xscale = -1;
        attack_instance.attack_delay = 3;
        break;
    
    case 130:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 3;
        break;
    
    case 150:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 40;
        break;
    
    case 180:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.image_xscale = -1;
        attack_instance.attack_delay = 1;
        break;
    
    case 220:
        instance_destroy();
        break;
}

attack_tick += 1;
