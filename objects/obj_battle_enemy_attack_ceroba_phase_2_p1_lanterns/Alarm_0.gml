var ds_list_pos, position_current, xx, yy;

if (live_call())
    return global.live_result;

if (ds_list_size(position_list) <= 0)
{
    if (!alarm[1])
        alarm[1] = 180;
    
    exit;
}

ds_list_pos = irandom_range(0, ds_list_size(position_list) - 1);
position_current = ds_list_find_value(position_list, ds_list_pos);
ds_list_delete(position_list, ds_list_pos);

switch (position_current)
{
    case 1:
        xx = battle_box.bbox_left + 20;
        yy = battle_box.bbox_top - 20;
        break;
    
    case 2:
        xx = battle_box.x;
        yy = battle_box.bbox_top - 50;
        break;
    
    case 3:
        xx = battle_box.bbox_right - 20;
        yy = battle_box.bbox_top - 20;
        break;
}

instance_create_depth(xx, yy, -100, obj_ceroba_phase_2_p1_lantern);
alarm[0] = 30;
