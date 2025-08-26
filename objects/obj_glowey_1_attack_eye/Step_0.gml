if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (image_alpha < 1)
            image_alpha += 0.25;
        else
            cutscene_wait(0.25);
        
        break;
    
    case 1:
        image_index = 0;
        draw_offset_x = choose(-1, 1);
        draw_offset_y = choose(-1, 1);
        cutscene_wait(0.25);
        break;
    
    case 2:
        var arc_size = 70;
        var bullet_number = 5;
        var arc_inc = arc_size / bullet_number;
        
        for (var i = 0; i < bullet_number; i++)
        {
            var bullet = instance_create_depth(x, y, depth - 1, obj_battle_enemy_attack_fpellets_simple);
            bullet.direction = (direction - (arc_size * 0.5)) + (i * arc_inc);
            bullet.speed = 7;
        }
        
        speed = -2;
        audio_play_sound(snd_arc_shoot, 1, 0);
        scene++;
        break;
    
    case 3:
        if (image_alpha > 0)
            image_alpha -= 0.1;
        else
            instance_destroy();
        
        break;
}
