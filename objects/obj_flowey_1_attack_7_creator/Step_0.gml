var box, soul1, soul2, soul3;

if (live_call())
    return global.live_result;

box = 3154;

switch (scene)
{
    case 0:
        cutscene_wait(0.5);
        break;
    
    case 1:
        soul1 = instance_create_depth(box.x, box.bbox_top - 16, -100, obj_flowey_1_attack_7_soul);
        soul1.target_y = box.y;
        scene++;
        break;
    
    case 2:
        if (!instance_exists(obj_flowey_1_attack_7_soul))
            scene++;
        
        break;
    
    case 3:
        soul1 = instance_create_depth(box.bbox_left - 16, box.bbox_top + 20, -100, obj_flowey_1_attack_7_soul);
        soul1.target_x = box.bbox_left + 20;
        soul2 = instance_create_depth(box.bbox_right + 16, box.bbox_bottom - 20, -100, obj_flowey_1_attack_7_soul);
        soul2.target_x = box.bbox_right - 20;
        scene++;
        break;
    
    case 4:
        if (!instance_exists(obj_flowey_1_attack_7_soul))
            scene++;
        
        break;
    
    case 5:
        soul1 = instance_create_depth(box.bbox_left - 16, box.bbox_top + 20, -100, obj_flowey_1_attack_7_soul);
        soul1.target_x = box.bbox_right - 20;
        soul2 = instance_create_depth(box.bbox_left - 16, box.bbox_bottom - 20, -100, obj_flowey_1_attack_7_soul);
        soul2.target_x = box.bbox_right - 20;
        soul3 = instance_create_depth(box.bbox_right + 16, box.y, -100, obj_flowey_1_attack_7_soul);
        soul3.target_x = box.bbox_left + 20;
        scene++;
        break;
    
    case 6:
        if (!instance_exists(obj_flowey_1_attack_7_soul))
            scene++;
        
        break;
    
    case 7:
        soul1 = instance_create_depth(box.bbox_left + 20, box.bbox_top - 20, -100, obj_flowey_1_attack_7_soul);
        soul1.target_y = box.bbox_bottom - 20;
        soul2 = instance_create_depth(box.bbox_right - 20, box.bbox_top - 20, -100, obj_flowey_1_attack_7_soul);
        soul2.target_y = box.bbox_bottom - 20;
        soul3 = instance_create_depth(box.x, box.bbox_bottom + 20, -100, obj_flowey_1_attack_7_soul);
        soul3.target_y = box.bbox_top + 20;
        scene++;
        break;
    
    case 8:
        cutscene_wait(3.5);
        break;
    
    case 9:
        instance_destroy();
        break;
}
