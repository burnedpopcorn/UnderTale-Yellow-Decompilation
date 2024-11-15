var soul, battle_box, right_boundary, left_boundary, top_boundary, bottom_boundary, soul_bbox_right, soul_bbox_left, soul_bbox_top, soul_bbox_bottom;

if (live_call())
    return global.live_result;

soul = 1279;
battle_box = 3154;
right_boundary = battle_box.bbox_right - 4;
left_boundary = battle_box.bbox_left + 4;
top_boundary = battle_box.bbox_top + 4;
bottom_boundary = battle_box.bbox_bottom - 4;

if (place_meeting(x, y, soul))
{
    if (soul.is_dashing)
    {
        instance_destroy();
    }
    else
    {
        soul_bbox_right = soul.x + 8;
        soul_bbox_left = soul.x - 8;
        soul_bbox_top = soul.y - 8;
        soul_bbox_bottom = soul.y + 8;
        
        if (vspeed != 0)
        {
            if (soul.x <= bbox_right && soul.x >= bbox_left)
            {
                while ((soul.y + vspeed) > y && soul.bbox_top < bbox_bottom)
                    soul.y += 1;
                
                while ((soul.y + vspeed) < y && soul.bbox_bottom > bbox_top)
                    soul.y -= 1;
            }
        }
        else if (hspeed != 0)
        {
            if (soul.y >= bbox_top && soul.y <= bbox_bottom)
            {
                while ((soul.x + hspeed) > x && soul.bbox_left < bbox_right)
                    soul.x += 1;
                
                while ((soul.x + hspeed) < x && soul.bbox_right > bbox_left)
                    soul.x -= 1;
            }
        }
        
        if (soul.bbox_left < left_boundary || soul.bbox_right > right_boundary || soul.bbox_bottom > bottom_boundary || soul.bbox_top < top_boundary)
        {
            soul.x = clamp(soul.x, left_boundary + 8, right_boundary - 8);
            soul.y = clamp(soul.y, top_boundary + 8, bottom_boundary - 8);
            instance_create_depth(soul.x - 6, soul.y - 6, -100, obj_martlet_attack_glass_hurtbox);
            instance_destroy();
        }
    }
}
