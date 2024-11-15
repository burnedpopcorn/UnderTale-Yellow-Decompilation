if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
scene_change = false;
scene_change_timer_max = 90;
scene_change_timer = 90;
overlay_alpha = 0.2;
overlay_image_index = 0;
static_flicker = false;
