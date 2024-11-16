var box, adv, x_target;

if (live_call())
    return global.live_result;

box = 3154;

switch (scene)
{
    case 0:
        if (obj_guardener_guy_a.active == false && obj_guardener_guy_a.is_on_target)
        {
            instance_create(-40, box.y + 10, obj_guardener_guy_c_gun);
            cutscene_advance();
        }
        
        obj_guardener_guy_a.active = false;
        break;
    
    case 1:
    case 3:
        adv = 1;
        
        with (obj_guardener_guy_c_gun)
        {
            x_target = box.bbox_left - 60;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y + 10, 0.2);
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 2:
        break;
}