var battle_box = obj_dialogue_box_battle_transformation_any;
var battle_box_third = battle_box.sprite_width / 3;

if (obj_heart_battle_fighting_parent.x < (battle_box.bbox_left + 4 + battle_box_third))
    spawn_pos = "left";
else if (obj_heart_battle_fighting_parent.x < (battle_box.bbox_left + 4 + (battle_box_third * 2)))
    spawn_pos = "middle";
else
    spawn_pos = "right";
