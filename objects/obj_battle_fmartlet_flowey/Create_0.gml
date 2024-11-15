if (live_call())
    return global.live_result;

flowey_shake_noloop = false;
starting_point_x = x;
starting_point_y = y;
draw_position_x = starting_point_x;
draw_position_y = starting_point_y;
image_speed = 1;
image_index = 0;
can_talk_no_loop = false;
hit_self_count = 0;
audio_pitch = 1;
audio_decrease_rate = 0.1;
can_decrease_audio = true;
audio_silence_rate = 0.02;
execute_audio_silence = false;
flowey_shake_intensity = 0;
