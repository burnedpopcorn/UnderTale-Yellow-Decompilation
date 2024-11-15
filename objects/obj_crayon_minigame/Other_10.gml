if (live_call())
    return global.live_result;

event_fade_out = true;
scr_audio_fade_out(mus, 500);
ds_grid_copy(global.sworks_id_grid, drawing_grid);
scr_mail_add("Steamworks ID");
global.sworks_flag[16] = 0;
