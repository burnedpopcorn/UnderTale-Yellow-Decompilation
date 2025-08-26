if (live_call())
    return global.live_result;

switch (step)
{
    case 1:
        if (image_alpha < 1)
            image_alpha += 0.02;
        
        if (timer == 0)
        {
            image_index += oscillator;
            oscillator *= -1;
            timer = 5;
        }
        
        var colliding_clay = collision_circle(x, y, 50, obj_flowey_battle_phase_2_clay_bullet, false, false);
        
        if (colliding_clay != -4)
        {
            with (colliding_clay)
                instance_destroy();
            
            image_index += 1;
            grow_count++;
        }
        
        if (grow_count == 15)
        {
            instance_destroy(obj_flowey_battle_phase_2_clay_bullet_generator);
            instance_destroy(obj_flowey_battle_phase_2_clay_bullet);
            step++;
        }
        
        timer--;
        break;
    
    case 2:
        sprite_index = spr_battle_flowey_clay_eye;
        image_speed = 1;
        instance_create_depth(0, 0, -100, obj_flowey_battle_phase_2_clay_droop_generator);
        obj_flowey_battle_phase_2_clay_eyedrop_spawner.default_generation_speed = room_speed * 3;
        step++;
        oscillator = 0;
        break;
}
