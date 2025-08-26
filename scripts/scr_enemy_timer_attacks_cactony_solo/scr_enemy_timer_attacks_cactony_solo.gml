function scr_enemy_timer_attacks_cactony_solo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Cactony Needle Side" && !instance_exists(obj_battle_enemy_attack_cactony_needle_side_generator))
        {
            var script_tgt = obj_dialogue_box_battle_transformation_any;
            scr_create_attack_boundary(script_tgt.bbox_left + 5, script_tgt.bbox_top + 5, script_tgt.sprite_width - 10, script_tgt.sprite_height - 10, 20, 0);
            instance_create(0, 0, obj_battle_enemy_attack_cactony_needle_side_generator);
        }
        else if (enemy_attack == "Cactony Needle Top" && !instance_exists(obj_battle_enemy_attack_cactony_needle_top_generator))
        {
            var script_tgt = obj_dialogue_box_battle_transformation_any;
            scr_create_attack_boundary(script_tgt.bbox_left + 5, script_tgt.bbox_top + 5, script_tgt.sprite_width - 10, script_tgt.sprite_height - 10, 20, 0);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_top - 52, obj_battle_enemy_attack_cactony_needle_top_generator);
        }
        
        if (enemy_attack == "Cactony Needle Green" && !instance_exists(obj_battle_enemy_attack_cactony_needle_green_generator))
            instance_create(0, 0, obj_battle_enemy_attack_cactony_needle_green_generator);
    }
}
