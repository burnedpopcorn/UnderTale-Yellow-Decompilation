with (instance_create(irandom_range(bbox_left + (sprite_get_width(spr_dunes_boulder_shadow) / 2), bbox_right - (sprite_get_width(spr_dunes_boulder_shadow) / 2)), 0, obj_dunes_boulders))
{
    y_target = irandom_range(other.bbox_bottom, other.bbox_top);
    y_target = clamp(y_target, other.bbox_top + (sprite_height / 2) + (sprite_get_height(spr_dunes_boulder_shadow) / 2), other.bbox_bottom) - (sprite_height / 2) - (sprite_get_height(spr_dunes_boulder_shadow) / 2);
    y = y_target - 300;
}

alarm[0] = irandom_range(15, 50);
