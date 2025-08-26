if (!instance_exists(obj_heart_battle_fighting_parent))
    exit;

var box = obj_dialogue_box_battle_transformation_any;

with (obj_heart_battle_fighting_parent)
{
    var distance = point_distance(x, y, box.x, box.y);
    var soul_speed = 3;
    
    if (move_x != 0 && move_y != 0)
        soul_speed = 4.24;
    
    var lerp_amount = soul_speed / 42;
    x = lerp(x, box.x, lerp_amount);
    y = lerp(y, box.y, lerp_amount);
}

box = obj_dialogue_box_battle_transformation_any;
var soul = obj_heart_battle_fighting_red;
stretch_multiplier = point_distance(box.x, box.y, soul.x, soul.y) / sprite_get_width(sprite_index);
image_xscale = stretch_multiplier;
direction = point_direction(box.x, box.y, soul.x, soul.y);
image_angle = direction;
