x += (move_speed * attack_direction);

if (no_loop == false)
{
    if ((attack_direction == 1 && bbox_left > obj_dialogue_box_battle_transformation_any.bbox_right) || (attack_direction == -1 && bbox_right < obj_dialogue_box_battle_transformation_any.bbox_left))
    {
        alarm[0] = 20;
        no_loop = true;
    }
}
