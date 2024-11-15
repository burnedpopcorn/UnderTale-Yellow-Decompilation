var box, attack_delay, y_offset_start, y_offset_inc, thorn_number, side_last, i, yy, thorn;

if (live_call())
    return global.live_result;

box = 3154;
attack_delay = 15;
instance_create_depth(box.x, box.bbox_top - 80, -1000, obj_flowey_1_attack_9_head);
obj_flowey_1_attack_9_head.alarm[0] = attack_delay;
flowey_ystart = obj_battle_flowey_body_1.y;
obj_battle_flowey_body_1.y = -1000;
y_offset_start = box.bbox_top - 10;
y_offset_inc = 40;
thorn_number = 10;
side_last = 1;

for (i = 0; i < thorn_number; i++)
{
    yy = y_offset_start + (i * y_offset_inc);
    
    if (side_last == 1)
    {
        thorn = instance_create_depth(box.bbox_left + 15, yy, -100, obj_flowey_1_attack_9_thorns);
        thorn.image_index = 0;
    }
    else
    {
        thorn = instance_create_depth(box.bbox_right - 15, yy, -100, obj_flowey_1_attack_9_thorns);
        thorn.image_index = 7;
    }
    
    side_last *= -1;
}

alarm[0] = room_speed * 7;
