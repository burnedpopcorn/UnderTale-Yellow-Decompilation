if (!layer_exists("Attack Layer"))
    layer_create(obj_heart_battle_fighting_parent.depth - 2, "Attack Layer");

attack_sequence = layer_sequence_create("Attack Layer", 320, 320, 20);
text_box_noloop = false;
scr_enable_battle_box_surface();
instance_create_depth(320, obj_dialogue_box_battle_transformation_any.bbox_bottom - 4, obj_heart_battle_fighting_parent.depth - 1, obj_sousborg_perfectly_edible_egg);
