if (live_call())
    return global.live_result;

var needle_count = 3;

switch (scene)
{
    case 0:
        image_alpha += 0.1;
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            scene++;
        }
        
        break;
    
    case 1:
        image_yscale = lerp(image_yscale, 0.5, 0.15);
        x = xstart + irandom_range(-3, 3);
        y = ystart + irandom_range(-3, 3);
        cutscene_wait(shoot_delay);
        break;
    
    case 2:
        image_speed = 1.5;
        speed = -4;
        var spawn_dir_current;
        
        if (x < 320)
            spawn_dir_current = -45;
        else
            spawn_dir_current = 135;
        
        for (var i = 0; i < needle_count; i++)
        {
            var needle = instance_create_depth(x + random_range(-15, 15), y + random_range(-15, 15), -100, obj_flowey_battle_phase_2_yarn_needle);
            needle.direction = spawn_dir_current;
            needle.speed = 11;
            spawn_dir_current += 45;
        }
        
        if (image_index >= (image_number - 1))
        {
            image_speed = 0;
            image_index = 0;
            scene++;
        }
        
        break;
    
    case 3:
        image_alpha -= 0.2;
        
        if (image_alpha <= 0)
            instance_destroy();
        
        break;
}

if (scene >= 2)
    image_yscale = lerp(image_yscale, 1, 0.25);
