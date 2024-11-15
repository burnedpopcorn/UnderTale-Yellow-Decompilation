var box, robot_b, hands_b, robot_a, hands_a, adv, x_target;

if (live_call())
    return global.live_result;

box = 3154;

switch (scene)
{
    case 0:
        if (obj_guardener_guy_a.active == false && obj_guardener_guy_a.is_on_target && obj_guardener_guy_b.is_on_target)
        {
            robot_b = instance_create(-40, box.y, obj_guardener_guy_b_noarms);
            hands_b = instance_create_depth(robot_b.x, robot_b.y, robot_b.depth - 1, obj_guardener_guy_throwing_hands);
            hands_b.robot_parent = robot_b;
            robot_a = instance_create(room_width + 40, box.y, obj_guardener_guy_a_noarms);
            hands_a = instance_create_depth(robot_a.x, robot_a.y, robot_a.depth - 1, obj_guardener_guy_throwing_hands);
            hands_a.robot_parent = robot_a;
            hands_a.image_xscale = -1;
            hands_a.throw_delay += hands_a.image_number - 0.5;
            cutscene_advance();
        }
        
        obj_guardener_guy_a.active = false;
        obj_guardener_guy_b.active = false;
        break;
    
    case 1:
        adv = 2;
        
        with (obj_guardener_guy_a_noarms)
        {
            x_target = box.bbox_right + 40;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if ((abs(x + y) - abs(x_target + box.y)) < 1)
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_noarms)
        {
            x_target = box.bbox_left - 40;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if ((abs(x + y) - abs(x_target + box.y)) < 1)
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 2:
        break;
    
    case 3:
        adv = 2;
        
        with (obj_guardener_guy_a_noarms)
        {
            x_target = 720;
            x = lerp(x, x_target, 0.2);
            
            if (x > (x_target - 40))
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_noarms)
        {
            x_target = -40;
            x = lerp(x, x_target, 0.2);
            
            if (x < (x_target + 20))
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 4:
        obj_guardener_guy_a.active = true;
        obj_guardener_guy_b.active = true;
        instance_destroy();
        break;
}
