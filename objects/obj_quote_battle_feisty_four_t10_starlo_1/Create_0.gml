text_effect = "twitchy";
message[0] = "   Hey!";
message_end = 0;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
scr_audio_fade_out(79, 350);
scr_audio_fade_out(593, 350);
scr_audio_fade_out(508, 350);
scr_audio_fade_out(642, 350);
scr_audio_fade_out(71, 350);