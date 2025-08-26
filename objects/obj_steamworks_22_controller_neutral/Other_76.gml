if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "steamworks_22_event_throw":
            var energy_ball = instance_create_depth(obj_axis_npc.x - 19, obj_axis_npc.y - 22, -240, obj_steamworks_22_energy_ball_fake_2);
            var fly_time = 16;
            energy_ball.direction = point_direction(energy_ball.x, energy_ball.y, obj_steamworks_13_robuild_complete.x + 32, obj_steamworks_13_robuild_complete.y);
            energy_ball.speed = point_distance(energy_ball.x, energy_ball.y, obj_steamworks_13_robuild_complete.x + 32, obj_steamworks_13_robuild_complete.y) / fly_time;
            scene++;
            break;
        
        case "steamworks_22_event_axis_stop_throwing":
            obj_axis_npc.action_sprite = false;
            break;
        
        case "steamworks_22_event_deflect":
            audio_play_sound(snd_ring, 1, 0);
            obj_steamworks_22_energy_ball_fake_2.direction = 3;
            obj_steamworks_22_energy_ball_fake_2.speed *= 1.25;
            scene++;
            break;
    }
}
