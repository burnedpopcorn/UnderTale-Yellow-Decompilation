var box;

if (live_call())
    return global.live_result;

box = 3154;
instance_create_depth(box.x, box.bbox_top - 60, -110, obj_flowey_1_attack_mouth_face);
alarm[0] = room_speed * 10;
flowey_ystart = obj_battle_flowey_body_1.y;
obj_battle_flowey_body_1.y = -1000;
