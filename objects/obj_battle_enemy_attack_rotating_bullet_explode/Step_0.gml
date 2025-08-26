if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 1:
        draw_alpha += 0.15;
        
        if (draw_alpha >= 1)
            scene++;
        
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        var bullet_number = 9;
        var y_offset = 0;
        var y_offset_inc = 10;
        var spawn_width = 100;
        var bullet_inc = spawn_width / bullet_number;
        var bullet_count = 1;
        var dir_offset = 40;
        var dir_start = 90 + (dir_offset * 0.5);
        var dir_inc = dir_offset / bullet_number;
        var istart = battle_box.x - (spawn_width * 0.5);
        
        for (var i = istart; i < (istart + spawn_width); i += bullet_inc)
        {
            var bullet = instance_create_depth(i, 200 + y_offset, -100, obj_battle_enemy_attack_bullet_residue);
            y_offset += (y_offset_inc * sign(bullet_count - (bullet_number * 0.5)));
            bullet.speed = 4;
            bullet.direction = dir_start - (bullet_count * dir_inc);
            bullet_count += 1;
            bullet.alarm[0] = 140;
            bullet.gravity = 0.15;
        }
        
        scene++;
        break;
    
    case 4:
        draw_alpha -= 0.25;
        
        if (draw_alpha <= 0)
            instance_destroy();
        
        break;
}
