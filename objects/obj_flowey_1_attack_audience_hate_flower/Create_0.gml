if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
image_alpha = 0;
speed = clamp(7 - (abs(320 - x) * 0.01), 0, 999);
target_x = irandom_range(box.bbox_left, box.bbox_right);
target_dist = target_x - x;
gravity = 0.15;
direction = point_direction(x, y, irandom_range(box.bbox_left, box.bbox_right), box.y - 80);
image_angle = direction + 90;
