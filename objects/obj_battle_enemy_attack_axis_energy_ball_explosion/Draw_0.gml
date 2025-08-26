var battle_box = obj_dialogue_box_battle_transformation_any;
draw_self();

if (instance_exists(obj_dialogue_box_battle_transformation_any))
{
    draw_set_color(c_white);
    draw_rectangle(battle_box.bbox_left, battle_box.bbox_top, battle_box.bbox_right, battle_box.bbox_bottom, false);
}
