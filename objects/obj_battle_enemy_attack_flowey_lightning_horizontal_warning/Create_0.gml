image_speed = 0.8;
image_index = 0;
counter = 0;
disjoint = 35;

while (y < (obj_dialogue_box_battle_transformation_any.bbox_top + 21))
    y += 1;

while (y > (obj_dialogue_box_battle_transformation_any.bbox_bottom - 21))
    y -= 1;

instance_create(x - disjoint, y, obj_battle_enemy_attack_dalv_lightning_dual_warning);
instance_create(x + disjoint, y, obj_battle_enemy_attack_dalv_lightning_dual_warning);
