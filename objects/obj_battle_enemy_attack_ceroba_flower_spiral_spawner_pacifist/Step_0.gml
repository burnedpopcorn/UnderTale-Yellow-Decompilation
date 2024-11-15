if (live_call())
    return global.live_result;

if (image_alpha < 1)
    image_alpha += 0.1;
else if (!alarm[0])
    alarm[0] = 10;

if (can_move == true)
{
    if (dir == "right")
    {
        if (x > obj_dialogue_box_battle_transformation_any.bbox_right && hspeed > 0)
            hspeed -= 0.2;
        else if (hspeed < move_speed)
            hspeed += 0.1;
    }
    
    if (dir == "left")
    {
        if (x < obj_dialogue_box_battle_transformation_any.bbox_left && hspeed < 0)
            hspeed += 0.2;
        else if (hspeed > -move_speed)
            hspeed -= 0.2;
    }
    
    if (dir == "left" || dir == "right")
    {
        if (hspeed == 0 && y < obj_dialogue_box_battle_transformation_any.bbox_bottom)
            dir = "down";
        else if (hspeed == 0)
            dir = "up";
    }
    
    if (dir == "down")
    {
        if (y > obj_dialogue_box_battle_transformation_any.bbox_bottom && vspeed > 0)
            vspeed -= 0.2;
        else if (vspeed < move_speed)
            vspeed += 0.2;
    }
    
    if (dir == "up")
    {
        if (y < obj_dialogue_box_battle_transformation_any.bbox_top && vspeed < 0)
            vspeed += 0.2;
        else if (vspeed > -move_speed)
            vspeed -= 0.2;
    }
    
    if (dir == "up" || dir == "down")
    {
        if (vspeed == 0 && x < obj_dialogue_box_battle_transformation_any.bbox_right)
            dir = "right";
        else if (vspeed == 0)
            dir = "left";
    }
}

if (image_xscale > 1)
    image_xscale -= 0.05;

if (image_yscale > 1)
    image_yscale -= 0.05;
