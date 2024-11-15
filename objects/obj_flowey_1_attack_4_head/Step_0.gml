var box, x_target, bullet_dir_base, spiral_count, spiral_dir_inc, spiral_dir, i, spiral, bullet_count, bullet_dir_inc, bullet_dir, bullet;

if (live_call())
    return global.live_result;

box = 3154;
x_target = box.x + (side * 200);

switch (scene)
{
    case 0:
        image_xscale += (0.4 * side);
        image_yscale += 0.2;
        
        if (abs(image_xscale * side) >= 1.4)
            scene++;
        
        break;
    
    case 1:
        image_xscale = lerp(image_xscale, 0.8 * side, 0.35);
        image_yscale = lerp(image_yscale, 1.2, 0.35);
        
        if (image_yscale >= 1.15)
            scene++;
        
        break;
    
    case 2:
        image_xscale = lerp(image_xscale, 1 * side, 0.35);
        image_yscale = lerp(image_yscale, 1, 0.35);
        
        if (abs(image_yscale - 1) < 0.05)
            scene++;
        
        break;
    
    case 3:
        if (abs(x - x_origin) > 10 || abs(y - y_origin) > 10)
        {
            x_origin = x;
            y_origin = y;
        }
        
        x = x_origin + irandom_range(-3, 3);
        y = y_origin + irandom_range(-3, 3);
        cutscene_wait(0.35);
        break;
    
    case 4:
        image_speed = 1;
        
        if (image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
        }
        else
        {
            exit;
        }
        
        if (spiral_offset <= 0)
        {
            bullet_dir_base = 0;
            
            if (side == 1)
                bullet_dir_base = 180;
            
            spiral_offset = spiral_offset_max;
            spiral_count = 4;
            spiral_dir_inc = 11;
            spiral_dir = -((spiral_count - 1) * 0.5 * spiral_dir_inc);
            
            for (i = 0; i < spiral_count; i++)
            {
                spiral = instance_create_depth(x, y, -100, obj_battle_enemy_attack_flowey_spiral);
                spiral.direction = bullet_dir_base + spiral_dir;
                spiral.speed = 5;
                spiral_dir += spiral_dir_inc;
            }
        }
        else
        {
            spiral_offset -= 1;
        }
        
        if (bullet_offset <= 0)
        {
            bullet_dir_base = 0;
            
            if (side == 1)
                bullet_dir_base = 180;
            
            bullet_offset = bullet_offset_max;
            bullet_count = 5;
            bullet_dir_inc = 11;
            bullet_dir = -((bullet_count - 1) * 0.5 * bullet_dir_inc);
            
            for (i = 0; i < bullet_count; i++)
            {
                bullet = instance_create_depth(x, y, -100, obj_battle_enemy_attack_fpellets_simple);
                bullet.direction = bullet_dir_base + bullet_dir;
                bullet.speed = 5;
                bullet_dir += bullet_dir_inc;
            }
        }
        else
        {
            bullet_offset -= 1;
        }
        
        cutscene_wait(1.5);
        break;
    
    case 5:
        image_index = 0;
        cutscene_wait(0.25);
        break;
    
    case 6:
        side *= -1;
        cutscene_advance();
        break;
    
    case 7:
        if (cutscene_wait(1))
        {
            bullet_dir = 0;
            attack_count--;
            
            if (attack_count < 0)
                instance_destroy(obj_flowey_1_attack_4_creator);
            
            cutscene_advance(4);
        }
        
        break;
}

if (abs(x - x_target) > 3)
    image_alpha = lerp(image_alpha, 0.25, 0.5);
else
    image_alpha = lerp(image_alpha, 1, 0.5);

x = lerp(x, x_target, 0.4);

if (scene >= 3)
{
    if (instance_exists(box) && x > box.x)
        image_xscale = 1;
    else
        image_xscale = -1;
}

image_xscale += irandom_range(-0.1, 0.1);
image_yscale += irandom_range(-0.1, 0.1);
