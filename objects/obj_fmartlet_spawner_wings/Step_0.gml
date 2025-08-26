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

function martlet_wing_spawn(arg0)
{
    var battle_box = obj_dialogue_box_battle_transformation_any;
    var xx = 0;
    var yy = 0;
    var xscale = 1;
    var yscale = 1;
    var angle = 0;
    
    switch (arg0)
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
    
    var wing = instance_create_depth(xx, yy, -50, obj_fmartlet_wings);
    
    with (wing)
    {
        image_xscale = xscale;
        image_yscale = yscale;
        image_angle = angle;
    }
}
