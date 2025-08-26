if (state == 0)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1;
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            alarm[0] = appear_alarm;
        }
    }
}
else if (state == 1)
{
    if (bbox_bottom < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 5))
    {
        var vsp = fall_speed;
        
        if ((bbox_bottom + vsp) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
        {
            while ((bbox_bottom + sign(vsp)) < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
                y += sign(vsp);
            
            vsp = 0;
        }
        
        y += vsp;
        
        if (bbox_bottom == (obj_dialogue_box_battle_transformation_any.bbox_bottom - 5))
        {
            default_y = y;
            instance_create(x, y, obj_battle_enemy_attack_dunebud_sandcastle_sandcastle);
            alarm[0] = fall_alarm;
        }
    }
}
else if (state == 2)
{
    if (no_loop_alarm == false)
    {
        shake_x_current += (shake_increase * shake_direction);
        
        if (abs(shake_x_current) >= shake_width_max)
        {
            shake_x_current = shake_width_max * shake_direction;
            shake_direction = -shake_direction;
        }
        
        x = default_x + shake_x_current;
        lift_y_current += lift_speed;
        y = default_y - lift_y_current;
        
        if (lift_y_current >= lift_height_max && abs(x - default_x) < shake_increase)
        {
            shake_x_current = 0;
            x = default_x + shake_x_current;
        }
        
        if (lift_y_current >= lift_height_max && x == default_x)
        {
            alarm[0] = shake_alarm;
            no_loop_alarm = true;
        }
    }
}
else if (state == 3)
{
    y -= rise_speed;
    
    if (bbox_bottom < obj_dialogue_box_battle_transformation_any.bbox_top)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.1;
            
            if (image_alpha <= 0)
                instance_destroy();
        }
    }
}
