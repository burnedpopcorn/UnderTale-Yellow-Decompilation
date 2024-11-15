if (live_call())
    return global.live_result;

battle_screenshake_duration = 3;
battle_screenshake_intensity = 3;
can_screenshake = true;
battle_screenshake_dec = battle_screenshake_intensity / battle_screenshake_duration;
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
