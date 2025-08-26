var spacing_v = obj_battle_enemy_attack_cactony_needle_green_generator.spacing_v;

if (bbox_top > obj_dialogue_box_battle_transformation_any.bbox_bottom)
{
    y -= spacing_v;
    
    while (place_meeting(x, y, obj_battle_enemy_attack_cactony_needle_green_white))
        y -= spacing_v;
}

if (green_id != -4)
{
    with (green_id)
        event_user(0);
}
