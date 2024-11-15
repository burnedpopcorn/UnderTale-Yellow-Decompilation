if (!instance_exists(obj_heart_battle_fighting_parent))
    instance_destroy();

game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
animation_disjoint_x = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
time_elapsed += time_increase;

if (time_elapsed >= time_max)
{
    time_elapsed = 0;
    sign_modifier = -sign_modifier;
}

x = draw_position_x + animation_disjoint_x;
y -= y_increase;

if (instance_exists(obj_dialogue_box_battle_transformation_any))
{
    if (bbox_bottom < obj_dialogue_box_battle_transformation_any.bbox_top)
        instance_destroy();
}
else
{
    instance_destroy();
}
