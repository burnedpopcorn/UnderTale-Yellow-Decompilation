var turns_passed;

text_effect = "twitchy";
attack = false;
turns_passed = global.turns_passed;
message[0] = "Starlo!";
message[1] = "Stop this right#now!";
message_end = 1;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;