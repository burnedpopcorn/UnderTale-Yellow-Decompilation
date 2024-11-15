if (live_call())
    return global.live_result;

switch (lightning_last)
{
    case "h":
        instance_create_depth(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)) + 1, obj_heart_battle_fighting_parent.y, -100, obj_battle_enemy_attack_flowey_lightning_horizontal_warning);
        break;
    
    case "v":
        instance_create_depth(obj_heart_battle_fighting_parent.x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), -100, obj_battle_enemy_attack_flowey_lightning_vertical_warning);
        break;
}

if (lightning_last == "v")
    lightning_last = "h";
else
    lightning_last = "v";

alarm[1] = 15;
