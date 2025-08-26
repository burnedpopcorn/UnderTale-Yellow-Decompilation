if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_alpha += 0.2;
        
        if (image_alpha >= 1)
            cutscene_advance();
        
        break;
    
    case 1:
        var turn_speed_inc = 0.25;
        
        if (turn_speed < turn_speed_max)
            turn_speed += turn_speed_inc;
        else
            cutscene_advance();
        
        break;
    
    case 2:
        if (image_angle >= shoot_point_next)
        {
            image_speed = 1;
            image_index = 0;
            launch_noloop = true;
            shoot_point_next += shoot_point_inc;
        }
        
        break;
}

image_angle += turn_speed;

if (launch_noloop == true)
{
    launch_noloop = false;
    
    if (attack_count > 0)
    {
        attack_count -= 1;
        
        for (var i = 0; i < 8; i++)
        {
            var new_dir = image_angle + (i * 45);
            var xx = x + lengthdir_x(10, new_dir + (turn_speed * 3));
            var yy = y + lengthdir_y(10, new_dir + (turn_speed * 3));
            var new_seed = instance_create_depth(xx, yy, depth + 1, obj_battle_enemy_attack_guardener_seed_small);
            new_seed.direction = new_dir;
            new_seed.launch_speed = 3.5;
        }
        
        audio_play_sound(snd_arc_shoot, 1, 0);
    }
    else
    {
        instance_destroy();
        instance_destroy(obj_battle_enemy_attack_guardener_attack_4);
    }
}

if (floor(image_index) >= (image_number - 1))
{
    image_speed = 0;
    image_index = 0;
}
