if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
var side;

do
    side = choose(1, 2, 3, 4);
until (side != side_last);

var angle = 0;
var xx, yy;

switch (side)
{
    case 1:
        yy = box.bbox_top;
        xx = irandom_range(box.bbox_left + 40, box.bbox_right - 40);
        angle = 90;
        break;
    
    case 2:
        xx = box.bbox_right;
        yy = irandom_range(box.bbox_top + 40, box.bbox_bottom - 40);
        angle = 0;
        break;
    
    case 3:
        yy = box.bbox_bottom;
        xx = irandom_range(box.bbox_left + 40, box.bbox_right - 40);
        angle = 270;
        break;
    
    case 4:
        xx = box.bbox_left;
        yy = irandom_range(box.bbox_top + 40, box.bbox_bottom - 40);
        angle = 180;
        break;
}

var new_flowey = instance_create_depth(xx, yy, -100, obj_flowey_1_attack_8_flower);
new_flowey.image_angle = angle - 90;
alarm[0] = spawn_delay;
side_last = side;
spawn_number--;

if (spawn_number <= 0)
    instance_destroy();
