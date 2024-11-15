function scr_enemy_attack_frostermit_snowflakes()
{
    var distance_x, distance_y, max_variations;
    
    global.attack_counter_max = 20;
    
    if (global.attack_counter == 0)
    {
        distance_x = -15;
        distance_y = 20;
        max_variations = 6;
        instance_create(round((obj_dialogue_box_battle_transformation_any.bbox_left - distance_x) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance_x * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * irandom_range(0, max_variations))), obj_dialogue_box_battle_transformation_any.bbox_top - distance_y, obj_battle_enemy_attack_frostermit_snowflakes);
    }
}
