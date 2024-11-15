if (live_call())
    return global.live_result;

if (room != rm_dunes_04)
    exit;

with (obj_pl)
{
    if (place_meeting(x, y, obj_event_collider))
    {
        if (y > obj_event_collider.y)
            other.shift_layers = 0;
        else
            other.shift_layers = 1;
    }
}

if (shift_layers == 0)
{
    obj_shadow_collider.sprite_index = spr_solve;
    
    with (obj_collider_dynamic)
        layer_active = 1;
    
    layer_depth("BridgeTop", -440);
}
else if (shift_layers == 1)
{
    obj_shadow_collider.sprite_index = -4;
    
    with (obj_collider_dynamic)
        layer_active = 0;
    
    layer_depth("BridgeTop", 999);
}

show_debug_message(shift_layers);
