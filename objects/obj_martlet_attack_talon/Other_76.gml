var scratch, collider;

if (live_call())
    return global.live_result;

if (layer_instance_get_instance(ds_map_find_value(event_data, "element_id")) == id)
{
    if (ds_map_find_value(event_data, "event_type") == "sprite event")
    {
        switch (ds_map_find_value(event_data, "message"))
        {
            case "talon_pause":
                image_speed = 0;
                attack_event_shake = true;
                alarm[0] = attack_delay;
                break;
            
            case "talon_spawn_scratch":
                can_move = false;
                audio_play_sound(snd_attack_swipe, 1, 0);
                scratch = instance_create_depth(x, y, depth + 1, obj_martlet_attack_talon_scratch);
                scratch.image_angle = image_angle;
                scratch.image_speed = image_speed;
                scratch.image_xscale = image_xscale;
                scratch.image_yscale = image_yscale;
                collider = instance_create_depth(x, y, depth, obj_martlet_attack_talon_scratch_collide);
                collider.image_angle = image_angle;
                collider.image_speed = image_speed;
                collider.image_xscale = image_xscale;
                collider.image_yscale = image_yscale;
                break;
        }
    }
}
