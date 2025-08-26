var box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        instance_create_depth(box.bbox_right - 40, box.bbox_top - 5, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm);
        cutscene_advance();
        break;
    
    case 1:
        cutscene_wait(1.5);
        break;
    
    case 2:
        instance_create_depth(box.bbox_left + 40, box.bbox_top - 5, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm_half);
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        var arm = instance_create_depth(box.bbox_left + 40, box.bbox_bottom + 5, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm_half);
        arm.launch_dir = "up";
        arm.image_angle = 180;
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(1.5);
        break;
    
    case 6:
        instance_destroy();
        break;
}
