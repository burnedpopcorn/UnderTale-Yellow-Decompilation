var battle_box, scratch_instance;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 30:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.attack_delay = 10;
        break;
    
    case 45:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.image_xscale = -1;
        scratch_instance.attack_delay = 10;
        break;
    
    case 60:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.attack_delay = 70;
        martlet_wing_spawn(0);
        break;
    
    case 120:
        martlet_wing_spawn(1);
        break;
    
    case 145:
        martlet_wing_spawn(0);
        break;
    
    case 170:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.attack_delay = 40;
        scratch_instance.image_xscale = -1;
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.attack_delay = 80;
        martlet_wing_spawn(0);
        break;
        break;
    
    case 210:
        martlet_wing_spawn(1);
        break;
    
    case 300:
        instance_destroy();
        break;
}

function martlet_wing_spawn(argument0)
{
    var battle_box, xx, yy, xscale, yscale, angle, wing;
    
    battle_box = 3154;
    xx = 0;
    yy = 0;
    xscale = 1;
    yscale = 1;
    angle = 0;
    
    switch (argument0)
    {
        case 0:
            xx = battle_box.bbox_left + 4;
            yy = battle_box.bbox_top + 30;
            break;
        
        case 1:
            xx = battle_box.bbox_right - 4;
            yy = battle_box.bbox_top + 30;
            xscale = -1;
            break;
    }
    
    wing = instance_create_depth(xx, yy, -50, obj_fmartlet_wings);
    
    with (wing)
    {
        feather_count = 0;
        image_xscale = xscale;
        image_yscale = yscale;
        image_angle = angle;
    }
}

attack_tick += 1;
