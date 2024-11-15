if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
shake_int = 0;
approach_int = 0;
clover_overlay_alpha = 0;
circle_alpha = 0;
circle_radius = 0;
surf = surface_create(room_width, room_height);
