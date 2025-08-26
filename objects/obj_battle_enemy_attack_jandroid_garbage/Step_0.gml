if (live_call())
    return global.live_result;

if (vspeed > vspeed_max)
    vspeed = vspeed_max;

var box = obj_dialogue_box_battle_transformation_any;

if ((bbox_bottom + vspeed) >= (box.bbox_bottom - 3))
{
    y = box.bbox_bottom - 3 - (sprite_height * 0.5);
    vspeed = -vspeed * 0.7;
    
    if (abs(vspeed) < 0.15)
        vspeed = 0;
    
    if (bounce_noloop == false)
    {
        hspeed = choose(-2, 2);
        bounce_noloop = true;
    }
}

if ((bbox_left + hspeed) <= (box.bbox_left + 3) || (bbox_right + hspeed) >= (box.bbox_right - 3))
{
    hspeed = -hspeed * 0.8;
    
    if (abs(hspeed) < 0.15)
        hspeed = 0;
}

if (fade_out == true)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
}
