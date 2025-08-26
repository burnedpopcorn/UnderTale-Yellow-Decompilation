if (live_call())
    return global.live_result;

var soul = obj_heart_battle_fighting_yellow_final;
var battle_box = obj_dialogue_box_battle_transformation_any;
var right_boundary = battle_box.bbox_right - 4;
var left_boundary = battle_box.bbox_left + 4;
var top_boundary = battle_box.bbox_top + 4;
var bottom_boundary = battle_box.bbox_bottom - 4;

if (place_meeting(x, y, soul))
{
    if (soul.is_dashing)
    {
        instance_destroy();
    }
    else
    {
        var soul_bbox_right = soul.x + 8;
        var soul_bbox_left = soul.x - 8;
        var soul_bbox_top = soul.y - 8;
        var soul_bbox_bottom = soul.y + 8;
        
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
