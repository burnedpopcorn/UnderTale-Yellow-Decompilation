if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
side = choose(-1, 1);
var flowey_face = instance_create_depth(box.x + (side * 160), box.y, -100, obj_flowey_1_attack_4_head);
flowey_face.image_xscale = side;
flowey_face.side = side;
