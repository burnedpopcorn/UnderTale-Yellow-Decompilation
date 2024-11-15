if (sprite_index == spr_dunebud_sink || sprite_index == spr_dunebud_sink_c)
{
    image_speed = 0;
    image_index = image_number - 1;
    global.id_store = id;
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_top + 5, obj_battle_enemy_attack_dunebud_chase_attack);
}

if (sprite_index == spr_dunebud_rise || sprite_index == spr_dunebud_rise_c)
    instance_destroy();
