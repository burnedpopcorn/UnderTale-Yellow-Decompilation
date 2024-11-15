if (state == "move")
{
    if (move_miss_lock == true)
    {
        if (sign(move_speed) == 0 || sign(move_speed) != move_sign_store)
            move_miss_lock = false;
    }
    
    if (abs(x - obj_heart_battle_fighting_parent.x) <= 8 && move_miss_lock == false)
    {
        if (move_miss_count > 0 && move_speed != 0 && abs(obj_heart_battle_fighting_parent.move_hsp_count) > 0 && sign(obj_heart_battle_fighting_parent.last_hsp) != sign(move_speed))
        {
            if (critical == false)
                move_miss_count -= 1;
            
            move_miss_lock = true;
            move_sign_store = sign(move_speed);
        }
        else if (critical == false)
        {
            state = "animate";
            sprite_index = sprite_fly_begin[side];
            image_speed = image_speed_fly_begin;
            image_index = 0;
        }
    }
}
