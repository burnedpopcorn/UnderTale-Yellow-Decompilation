if (state == "animate")
{
    if (sprite_index == sprite_rise[0] || sprite_index == sprite_rise[1])
    {
        state = "move";
        sprite_index = sprite_move[side];
        image_speed = image_speed_move;
        image_index = 0;
        move_speed = 0;
        
        if (critical == false)
            move_miss_count = irandom_range(0, 2);
        else
            move_miss_count = 1;
        
        move_miss_lock = false;
        move_sign_store = 0;
    }
    else if (sprite_index == sprite_sink[0] || sprite_index == sprite_sink[1])
    {
        instance_destroy();
    }
    else if (sprite_index == sprite_fly_begin[0] || sprite_index == sprite_fly_begin[1])
    {
        state = "fly";
        sprite_index = sprite_fly[side];
        image_speed = image_speed_fly;
        image_index = 0;
        global.id_store = id;
        instance_create(x, y, obj_battle_enemy_attack_dunebud_chase_particles);
        
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
    else if (sprite_index == sprite_fly_end[0] || sprite_index == sprite_fly_end[1])
    {
        state = "move";
        
        if (side == 0)
            side = 1;
        else
            side = 0;
        
        sprite_index = sprite_move[side];
        image_speed = image_speed_move;
        image_index = 0;
        move_speed = 0;
        move_miss_count = irandom_range(0, 2);
        move_miss_lock = false;
        move_sign_store = 0;
    }
}
