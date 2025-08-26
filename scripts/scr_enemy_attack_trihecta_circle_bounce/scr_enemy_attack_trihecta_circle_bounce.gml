function scr_enemy_attack_trihecta_circle_bounce()
{
    if (!instance_exists(obj_battle_enemy_attack_trihecta_circle_bounce))
    {
        var random_number = irandom_range(0, 1);
        var bbox_var;
        
        if (random_number == 0)
        {
            random_number = -1;
            bbox_var = obj_dialogue_box_battle_transformation_any.bbox_left;
        }
        else
        {
            bbox_var = obj_dialogue_box_battle_transformation_any.bbox_right;
        }
        
        for (i = 0; i <= 2; i += 1)
            instance_create(bbox_var + (random_number * 15) + (random_number * i * 22), obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_trihecta_circle_bounce);
    }
}
