var battle_box, bullet_number, y_offset, y_offset_inc, spawn_width, bullet_inc, bullet_count, dir_offset, dir_start, dir_inc, istart, i, bullet;

if (live_call())
    return global.live_result;

battle_box = 3154;

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
        bullet_number = 9;
        y_offset = 0;
        y_offset_inc = 10;
        spawn_width = 100;
        bullet_inc = spawn_width / bullet_number;
        bullet_count = 1;
        dir_offset = 40;
        dir_start = 90 + (dir_offset * 0.5);
        dir_inc = dir_offset / bullet_number;
        istart = battle_box.x - (spawn_width * 0.5);
        
        for (i = istart; i < (istart + spawn_width); i += bullet_inc)
        {
            bullet = instance_create_depth(i, 200 + y_offset, -100, obj_battle_enemy_attack_bullet_residue);
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
