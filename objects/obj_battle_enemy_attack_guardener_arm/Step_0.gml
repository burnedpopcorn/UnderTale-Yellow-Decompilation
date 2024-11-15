var box, smoke;

box = 3154;

switch (scene)
{
    case 0:
        depth = obj_heart_battle_fighting_parent.depth - 1;
        
        switch (launch_dir)
        {
            case "down":
                x = clamp(x, box.bbox_left + 32, box.bbox_right - 32);
                vspeed = launch_speed;
                image_angle = 0;
                
                if (y >= (box.bbox_bottom - 4))
                {
                    y = box.bbox_bottom - 4;
                    vspeed = 0;
                    scene = 1;
                }
                
                break;
            
            case "right":
                y = clamp(y, box.bbox_top + 32, box.bbox_bottom - 32);
                hspeed = launch_speed;
                image_angle = 90;
                
                if (x >= (box.bbox_right - 4))
                {
                    x = box.bbox_right - 4;
                    hspeed = 0;
                    scene = 1;
                }
                
                break;
            
            case "up":
                x = clamp(x, box.bbox_left + 32, box.bbox_right - 32);
                vspeed = -launch_speed;
                image_angle = 180;
                
                if (y <= (box.bbox_top + 4))
                {
                    y = box.bbox_top + 4;
                    vspeed = 0;
                    scene = 1;
                }
                
                break;
            
            case "left":
                y = clamp(y, box.bbox_top + 32, box.bbox_bottom - 32);
                hspeed = -launch_speed;
                image_angle = 270;
                
                if (x <= (box.bbox_left + 4))
                {
                    x = box.bbox_left + 4;
                    hspeed = 0;
                    scene = 1;
                }
                
                break;
        }
        
        break;
    
    case 1:
        audio_play_sound(snd_guardener_arm_land, 1, 0);
        audio_stop_sound(snd_guardener_arm_launched);
        scr_screenshake_battle(6, 1);
        smoke = instance_create_depth(x, y, depth - 1, obj_battle_enemy_attack_guardener_arm_smoke);
        smoke.image_angle = image_angle;
        sprite_index = spr_attack_guardener_arm_land;
        image_index = 0;
        scene++;
        break;
    
    case 2:
        if (image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
        }
        
        if (arm_return > 0)
        {
            if (!alarm[1])
                alarm[1] = arm_return;
        }
        
        break;
    
    case 3:
        switch (launch_dir)
        {
            case "down":
                vspeed = -launch_speed;
                
                if (y <= ystart)
                    instance_destroy();
                
                break;
            
            case "right":
                hspeed = -launch_speed;
                
                if (x <= xstart)
                    instance_destroy();
                
                break;
            
            case "up":
                vspeed = launch_speed;
                
                if (y >= ystart)
                    instance_destroy();
                
                break;
            
            case "left":
                hspeed = -launch_speed;
                
                if (x <= xstart)
                    instance_destroy();
                
                break;
        }
        
        break;
}
