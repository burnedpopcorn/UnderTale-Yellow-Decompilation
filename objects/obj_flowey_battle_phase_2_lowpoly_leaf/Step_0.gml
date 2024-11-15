if (live_call())
    return global.live_result;

if (hp_self <= 0 && destroy_self == false)
{
    vspeed -= 4;
    gravity = 0.35;
    
    if (x > 240)
        hspeed = 4;
    else
        hspeed = -4;
    
    destroy_self = true;
}

if (destroy_self == true)
{
    image_alpha -= 0.05;
    
    if (image_alpha <= 0)
        instance_destroy();
    
    exit;
}

event_inherited();
image_index = obj_flowey_battle_final.image_index;
