image_speed = 0.8;
image_index = 0;
counter = 0;
disjoint = 35;

while (x < (obj_dialogue_box_battle_transformation_any.bbox_left + 21))
    x += 1;

while (x > (obj_dialogue_box_battle_transformation_any.bbox_right - 21))
    x -= 1;

instance_create(x, y - disjoint, obj_battle_enemy_attack_dalv_lightning_dual_warning);
instance_create(x, y + disjoint, obj_battle_enemy_attack_dalv_lightning_dual_warning);
