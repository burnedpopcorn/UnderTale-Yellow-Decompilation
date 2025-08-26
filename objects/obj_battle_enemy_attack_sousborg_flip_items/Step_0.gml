if (live_call())
    return global.live_result;

if (vspeed > vspeed_max)
    vspeed = vspeed_max;

image_angle += (image_angle_inc * 5);
var box = obj_dialogue_box_battle_transformation_any;

if (y > (box.bbox_bottom + 6) && vspeed > 0)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
}
