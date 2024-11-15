var spawner;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_battle_flowey_body_1.image_alpha > 0)
            obj_battle_flowey_body_1.image_alpha -= 0.2;
        
        if (alpha_base < 1)
            alpha_base += 0.2;
        else
            scene++;
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        if (!alarm[1])
            alarm[1] = 1;
        
        if (hand_alpha < 1)
            hand_alpha += 0.2;
        else
            scene++;
        
        break;
    
    case 3:
        pick_index += 0.5;
        left_index = pick_index;
        
        if (face_index < 9)
            face_index += 0.5;
        
        if (pick_index >= 12)
        {
            spawner = instance_create_depth(x, y, depth, obj_petal_pull_pollen_spawner);
            spawner.spawn_x = x - 33;
            spawner.spawn_y = y - 28;
            spawner.spawn_direction = 180;
            scene++;
        }
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        hand_alpha -= 0.2;
        left_alpha = hand_alpha;
        
        if (face_index < 14)
            face_index += 0.5;
        
        if (hand_alpha <= 0 && face_index >= 14)
            scene++;
        
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        pick_index = 15;
        
        if (hand_alpha < 1)
            hand_alpha += 0.2;
        else
            scene++;
        
        break;
    
    case 8:
        if (face_index < 22)
            face_index += 0.5;
        else
            face_index = 22;
        
        if (pick_index >= 26)
        {
            spawner = instance_create_depth(x, y, depth, obj_petal_pull_pollen_spawner);
            spawner.spawn_x = x + 28;
            spawner.spawn_y = y - 28;
            spawner.spawn_direction = 0;
            spawner.side = -1;
            scene++;
            pick_index = 26;
        }
        else
        {
            pick_index += 0.5;
        }
        
        right_index = clamp(pick_index - 12, 0, 12);
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        hand_alpha -= 0.2;
        right_alpha = hand_alpha;
        
        if (hand_alpha <= 0 && face_index >= 14)
            scene++;
        
        break;
    
    case 11:
        cutscene_wait(2);
        break;
    
    case 12:
        if (obj_battle_flowey_body_1.image_alpha < 1)
            obj_battle_flowey_body_1.image_alpha += 0.2;
        else
            instance_destroy();
        
        break;
}

if (face_index >= 20)
{
    if (shake_intensity < max_shake)
        shake_intensity += 0.05;
}
