var ytarget, spawn_var;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_xscale += 0.4;
        image_yscale += 0.2;
        
        if (image_xscale >= 1.4)
            scene++;
        
        break;
    
    case 1:
        image_xscale = lerp(image_xscale, 0.8, 0.35);
        image_yscale = lerp(image_yscale, 1.2, 0.35);
        
        if (image_yscale >= 1.19)
            scene++;
        
        break;
    
    case 2:
        image_xscale = lerp(image_xscale, 1, 0.35);
        image_yscale = lerp(image_yscale, 1, 0.35);
        
        if (abs(image_yscale - 1) < 0.01)
            scene++;
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        image_angle = lerp(image_angle, -25, 0.4);
        
        if (image_angle <= -24.9)
            scene++;
        
        break;
    
    case 5:
        image_angle = lerp(image_angle, 180, 0.35);
        
        if (image_angle >= 179.9)
        {
            image_angle = 180;
            scene++;
        }
        
        break;
    
    case 6:
        cutscene_wait(0.25);
        spawn_last = 0;
        break;
    
    case 7:
        image_xscale = lerp(image_xscale, 0.9, 0.4);
        image_yscale = lerp(image_yscale, 1.1, 0.4);
        ytarget = ystart - 30;
        y = lerp(y, ytarget, 0.4);
        
        if (abs(y - ytarget) < 0.5)
            scene++;
        
        break;
    
    case 8:
        image_xscale = lerp(image_xscale, 1.1, 0.4);
        image_yscale = lerp(image_yscale, 0.9, 0.4);
        ytarget = ystart + 20;
        
        do
            spawn_var = choose(1, 2, 3);
        until (spawn_var != spawn_last);
        
        y = lerp(y, ytarget, 0.4);
        
        if (shoe_noloop == false && y > ystart)
        {
            shoe_noloop = true;
            
            if (spawn_var != 1)
                instance_create_depth(x - 40, y - 20, depth - 1, obj_flowey_1_attack_shoe);
            
            if (spawn_var != 2)
                instance_create_depth(x, y - 20, depth - 1, obj_flowey_1_attack_shoe);
            
            if (spawn_var != 3)
                instance_create_depth(x + 40, y - 20, depth - 1, obj_flowey_1_attack_shoe);
            
            spawn_last = spawn_var;
        }
        
        if (abs(y - ytarget) < 0.5)
        {
            shoe_noloop = false;
            scene = 7;
        }
        
        break;
}
