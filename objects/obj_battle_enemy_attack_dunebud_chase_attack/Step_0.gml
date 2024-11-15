if (state == "move")
{
    if (can_sink == true)
    {
        state = "animate";
        sprite_index = sprite_sink[side];
        image_speed = image_speed_sink;
        image_index = 0;
    }
    else
    {
        if (x < obj_heart_battle_fighting_parent.x)
            move_sign = 1;
        else if (x > obj_heart_battle_fighting_parent.x)
            move_sign = -1;
        else
            move_sign = 0;
        
        move_speed += (move_accel * move_sign);
        
        if (abs(move_speed) > move_max)
            move_speed = sign(move_speed) * move_max;
        
        if (critical == false || !(critical == true && abs(x - obj_heart_battle_fighting_parent.x) < move_max && obj_heart_battle_fighting_parent.move_hsp_count == 0))
            x += move_speed;
        else
            move_speed = 0;
    }
}
else if (state == "fly")
{
    if (side == 0)
    {
        y += fly_speed;
        
        if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 5))
        {
            y = obj_dialogue_box_battle_transformation_any.bbox_bottom - 5;
            state = "animate";
            sprite_index = sprite_fly_end[side];
            image_speed = image_speed_fly_end;
            image_index = 0;
        }
    }
    else
    {
        y -= fly_speed;
        
        if (bbox_top <= (obj_dialogue_box_battle_transformation_any.bbox_top + 5))
        {
            y = obj_dialogue_box_battle_transformation_any.bbox_top + 5;
            state = "animate";
            sprite_index = sprite_fly_end[side];
            image_speed = image_speed_fly_end;
            image_index = 0;
        }
    }
}
