message[0] = "Ow ow ow! Hushh#hushh HUSHH!";
message_end = 0;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
