var box = obj_dialogue_box_battle_transformation_any;

if (!layer_exists("Attack Layer"))
    layer_create(-999, "Attack Layer");

attack_sequence = layer_sequence_create("Attack Layer", 400, box.bbox_bottom + 40, 32);
alarm[0] = room_speed * 7;
can_move = false;
x_new = 0;
item_hspeed = 4;
