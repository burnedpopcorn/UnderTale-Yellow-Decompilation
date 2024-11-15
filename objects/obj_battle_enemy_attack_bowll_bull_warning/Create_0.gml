id_bull = global.id_store;
image_speed = 0.8;
image_index = 0;
counter = 0;

if (id_bull.x_dir != 0)
    disjoint = floor(0.5 + (obj_dialogue_box_battle_transformation_any.sprite_width / 4));
else
    disjoint = floor(0.5 + (obj_dialogue_box_battle_transformation_any.sprite_height / 4));
