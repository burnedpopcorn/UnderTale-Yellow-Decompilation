if (live_call())
    return global.live_result;

switch (attack_tick)
{
    case 30:
        martlet_wing_spawn(0);
        break;
    
    case 60:
        martlet_wing_spawn(1);
        break;
    
    case 90:
        martlet_wing_spawn(0);
        break;
    
    case 120:
        martlet_wing_spawn(1);
        break;
    
    case 140:
        martlet_wing_spawn(1);
        break;
    
    case 180:
        martlet_wing_spawn(0);
        break;
    
    case 200:
        martlet_wing_spawn(1);
        break;
    
    case 300:
        instance_destroy();
        break;
}

attack_tick += 1;

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
        image_xscale = xscale;
        image_yscale = yscale;
        image_angle = angle;
    }
}
