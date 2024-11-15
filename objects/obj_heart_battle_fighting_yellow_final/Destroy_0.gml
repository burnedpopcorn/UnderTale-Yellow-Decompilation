if (live_call())
    return global.live_result;

ds_list_destroy(x_list);
ds_list_destroy(y_list);
event_user(3);

if (audio_is_playing(charge_sound))
    audio_stop_sound(charge_sound);

with (obj_heart_yellow_shot)
    instance_destroy();

with (obj_heart_yellow_shot_blast)
    instance_destroy();
