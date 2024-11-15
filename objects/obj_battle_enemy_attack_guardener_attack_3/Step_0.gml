var box, flower, arm;

box = 3154;

switch (scene)
{
    case 0:
        cutscene_wait(0.5);
        break;
    
    case 1:
        flower = instance_create_depth(320, box.bbox_bottom - 4, obj_heart_battle_fighting_parent.depth - 1, obj_guardener_flower);
        flower.image_xscale = 1;
        flower.image_yscale = 1;
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(1.8);
        break;
    
    case 3:
        arm = instance_create_depth(box.bbox_left - 5, box.bbox_top + 40, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm);
        arm.launch_dir = "right";
        arm.image_angle = 90;
        arm.arm_return = 5;
        cutscene_advance();
        break;
    
    case 4:
        cutscene_wait(0.4);
        break;
    
    case 5:
        arm = instance_create_depth(box.bbox_left - 5, box.bbox_top + 70, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm);
        arm.launch_dir = "right";
        arm.image_angle = 90;
        arm.arm_return = 5;
        cutscene_advance();
        break;
    
    case 6:
        cutscene_wait(0.4);
        break;
    
    case 7:
        arm = instance_create_depth(box.bbox_left - 5, box.bbox_top + 100, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm);
        arm.launch_dir = "right";
        arm.image_angle = 90;
        arm.arm_return = 5;
        cutscene_advance();
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        obj_guardener_flower.sprite_index = spr_guardener_plant_disappear;
        obj_guardener_flower.image_speed = 1;
        cutscene_advance();
        break;
    
    case 10:
        cutscene_wait(1.5);
        break;
    
    case 11:
        instance_destroy();
        break;
}
