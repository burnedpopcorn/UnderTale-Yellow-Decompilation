var battle_box, log, i, frog;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 15:
    case 75:
    case 135:
        log = instance_create_depth(battle_box.bbox_left - 94, battle_box.bbox_bottom - 4 - 17, -100, obj_bigfrog_log);
        width_inc = (sprite_get_width(spr_bigfrog_log) - 10) / 4;
        i = log.bbox_left + 17;
        
        while (i <= log.bbox_right)
        {
            frog = instance_create_depth(i, log.bbox_top, -101, obj_bigfrog_log_frog);
            frog.x_offset = frog.x - log.x;
            frog.spawner_log = log;
            
            if ((frog_count % 2) == 0)
                frog.jump_interval *= 1.5;
            
            frog.alarm[0] = frog.jump_interval;
            
            if (frog_count == frog_green)
                frog.is_green = true;
            
            frog_count += 1;
            i += width_inc;
        }
        
        break;
    
    case 250:
        instance_destroy();
        break;
}

attack_tick += 1;
