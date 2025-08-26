if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

if (destroy_self)
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}
else if (image_alpha < 1)
{
    image_alpha += 0.2;
}

switch (scene)
{
    case 0:
        image_speed = 1;
        audio_play_sound(snd_arc_shoot, 1, 0);
        var bullet = instance_create_depth(x + lengthdir_x(speed * 2, direction), y + lengthdir_y(speed * 2, direction), -100, obj_battle_enemy_attack_axis_turret_bullet);
        bullet.direction = image_angle;
        bullet.image_angle = bullet.direction;
        bullet.speed = 8;
        shot_number--;
        scene++;
        break;
    
    case 1:
        if (cutscene_wait(0.25))
            scene = 0;
        
        break;
}

var base_speed = 5;
var variation = choose(1, 2);

switch (side)
{
    case 1:
        if (!dir_noloop)
        {
            if (variation == 1)
                hspeed = base_speed;
            else
                vspeed = base_speed;
            
            dir_noloop = true;
        }
        
        if (x > target_x)
            destroy_self = true;
        
        break;
    
    case 2:
        if (!dir_noloop)
        {
            if (variation == 1)
                hspeed = -base_speed;
            else
                vspeed = base_speed;
            
            dir_noloop = true;
        }
        
        if (y > target_y)
            destroy_self = true;
        
        break;
    
    case 3:
        if (!dir_noloop)
        {
            if (variation == 1)
                hspeed = -base_speed;
            else
                vspeed = -base_speed;
            
            dir_noloop = true;
        }
        
        break;
    
    case 4:
        if (!dir_noloop)
        {
            if (variation == 1)
                hspeed = base_speed;
            else
                vspeed = -base_speed;
            
            dir_noloop = true;
        }
        
        if (y < target_y)
            destroy_self = true;
        
        break;
}

if ((hspeed > 0 && x > target_x) || (hspeed < 0 && x < target_x) || (vspeed > 0 && y > target_y) || (vspeed < 0 && y < target_y))
    destroy_self = true;

image_angle = point_direction(x, y, battle_box.x, battle_box.y);
