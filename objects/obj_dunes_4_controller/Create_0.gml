if (live_call())
    return global.live_result;

shift_layers = -1;

if (instance_number(obj_dunes_4_controller) > 1)
{
    instance_destroy();
    exit;
}

obj_shadow_collider.sprite_index = -4;

if (obj_pl.y > 320)
    shift_layers = 0;
else
    shift_layers = 1;
