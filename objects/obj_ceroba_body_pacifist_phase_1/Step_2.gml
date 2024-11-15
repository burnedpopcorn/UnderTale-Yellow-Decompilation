if (live_call())
    return global.live_result;

if (sprite_index == spr_ceroba_body)
{
    obj_ceroba_head.image_alpha = image_alpha;
    obj_ceroba_hand_right.image_alpha = image_alpha;
    obj_ceroba_hand_left.image_alpha = image_alpha;
    obj_ceroba_staff.image_alpha = image_alpha;
    obj_ceroba_ponytail.image_alpha = image_alpha;
    
    if (global.image_alpha_enemy_attacking < 1)
        image_blend = c_gray;
    else
        image_blend = c_white;
    
    obj_ceroba_head.image_blend = image_blend;
    obj_ceroba_hand_right.image_blend = image_blend;
    obj_ceroba_hand_left.image_blend = image_blend;
    obj_ceroba_staff.image_blend = image_blend;
    obj_ceroba_ponytail.image_blend = image_blend;
}
