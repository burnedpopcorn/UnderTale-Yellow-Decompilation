var xx, yy;

if (stage == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
    
    exit;
}

if (image_alpha < 1)
    image_alpha += 0.1;

if (image_xscale > 1)
    image_xscale -= 0.05;

if (image_yscale > 1)
    image_yscale -= 0.05;

switch (current_position)
{
    case 1:
        xx = 200;
        yy = obj_dialogue_box_battle_transformation_any.bbox_top - 40;
        break;
    
    case 2:
        xx = 200;
        yy = obj_dialogue_box_battle_transformation_any.bbox_bottom + 40;
        break;
    
    case 3:
        xx = 440;
        yy = obj_dialogue_box_battle_transformation_any.bbox_bottom + 40;
        break;
}

x = lerp(x, xx, 0.5);
y = lerp(y, yy, 0.5);

if (round(x) != round(xx) || round(y) != round(yy))
{
    if (alarm[0] > 0)
        alarm[0] = -1;
}
else if (!alarm[0])
{
    alarm[0] = 1;
}
