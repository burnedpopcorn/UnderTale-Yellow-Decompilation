var xx, yy, dir;

if (live_call())
    return global.live_result;

xx = obj_heart_battle_fighting_parent.x;
yy = obj_heart_battle_fighting_parent.y;

switch (scene)
{
    case 0:
        dir = random_range(0, 180);
        bul = instance_create_depth(xx + lengthdir_x(100, dir), yy + lengthdir_y(100, dir), -100, obj_flowey_battle_phase_2_gray_pellet);
        bul.direction = point_direction(bul.x, bul.y, xx, yy);
        bul.speed = 0;
        scene++;
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        audio_play_sound(snd_undertale_swoosh, 1, 0);
        bul.speed = 12;
        bul.alarm[0] = 50;
        scene++;
        break;
    
    case 3:
        pellet_count--;
        
        if (pellet_count > 0)
            scene = 0;
        else
            cutscene_wait(1.5);
        
        break;
    
    case 4:
        instance_destroy();
        break;
}
