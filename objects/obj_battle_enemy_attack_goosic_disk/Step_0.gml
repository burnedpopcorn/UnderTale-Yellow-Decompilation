if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        disc_yoffset -= abs(vsp);
        y += vsp;
        
        if (disc_yoffset <= 0)
        {
            vsp = lerp(vsp, 0, 0.15);
            
            if (abs(vsp) < 0.1)
            {
                vsp = 0;
                scene = 1;
            }
        }
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        if (spin_speed < 20)
            spin_speed += 1;
        else
            cutscene_advance();
        
        break;
    
    case 3:
        var soul_dir = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        
        if (launch_timer > 0)
            launch_timer -= 1;
        else if (direction > floor(soul_dir - spin_speed) && direction < floor(soul_dir + spin_speed))
            slow_down_noloop = true;
        
        if (slow_down_noloop == true)
        {
            spin_speed = lerp(spin_speed, 0, 0.75);
            
            if (spin_speed < 0.1)
            {
                spin_speed = 0;
                scene++;
            }
        }
        
        break;
    
    case 4:
        cutscene_wait(0.2);
        break;
    
    case 5:
        speed = lerp(speed, 14, 0.5);
        
        if (cutscene_wait(0.7))
        {
            launch_timer = launch_timer_max;
            slow_down_noloop = false;
            scene = 1;
            cutscene_advance(2);
        }
        
        break;
}

direction -= spin_speed;
image_angle = direction;

if (scene != 4 && scene != -1)
    speed = lerp(speed, 0, 0.3);

var alpha_new;

if (scene == 2 || scene == 3)
    alpha_new = 1;
else
    alpha_new = 0;

arrow_alpha = lerp(arrow_alpha, alpha_new, 0.2);
