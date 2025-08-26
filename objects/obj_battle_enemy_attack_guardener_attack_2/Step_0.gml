var box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        cutscene_wait(0.5);
        break;
    
    case 1:
        var arm = instance_create_depth(box.bbox_left - 5, 330, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm);
        arm.launch_dir = "right";
        arm.image_angle = 90;
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        if (!alarm[0])
        {
            if (grass_spawn_count > 0)
            {
                alarm[0] = 7;
                grass_spawn_count -= 1;
            }
            else
            {
                cutscene_advance();
            }
        }
        
        break;
    
    case 4:
        cutscene_wait(2.5);
        break;
    
    case 5:
        instance_destroy();
        break;
}
