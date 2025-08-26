var spacing_h = obj_battle_enemy_attack_cactony_needle_green_generator.spacing_h;

if (move_direction == 1 && bbox_left > obj_dialogue_box_battle_transformation_any.bbox_right)
{
    x -= spacing_h;
    
    while (place_meeting(x, y, obj_battle_enemy_attack_cactony_needle_green_white))
        x -= spacing_h;
}
else if (move_direction == -1 && bbox_right < obj_dialogue_box_battle_transformation_any.bbox_left)
{
    x += spacing_h;
    
    while (place_meeting(x, y, obj_battle_enemy_attack_cactony_needle_green_white))
        x += spacing_h;
}
