if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        var xx = choose(box.bbox_left + 40, box.bbox_right - 40);
        var yy = choose(box.bbox_top + 40, box.bbox_bottom - 40);
        
        if (place_free(xx, yy))
        {
            gear_current = instance_create_depth(xx, yy, obj_heart_battle_fighting_parent.depth - 10, obj_battle_enemy_attack_guardener_launcher_destroyable_fadein);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.25);
        break;
    
    case 2:
        var yy, launch_dir_new, dir_new;
        
        if (gear_current.y < box.y)
        {
            launch_dir_new = "up";
            dir_new = 180;
            yy = box.bbox_bottom + 5;
        }
        else
        {
            launch_dir_new = "down";
            dir_new = 0;
            yy = box.bbox_top - 5;
        }
        
        var xx = gear_current.x;
        var arm = instance_create_depth(xx, yy, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm);
        arm.launch_dir = launch_dir_new;
        arm.image_angle = dir_new;
        arm.arm_return = 10;
        cutscene_advance();
        break;
    
    case 3:
        if (cutscene_wait(2))
        {
            attack_count -= 1;
            
            if (attack_count > 0)
                cutscene_advance(0);
            else
                instance_destroy();
        }
        
        break;
}
