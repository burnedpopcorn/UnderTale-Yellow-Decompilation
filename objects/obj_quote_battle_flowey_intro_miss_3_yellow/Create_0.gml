message[0] = "You sicko! Are you#doing this on#purpose?!";
message[1] = "Fine! I'll just stop#sending them then.";
message[2] = "Since you're so bad#at dodging bullets,#I can SAVE your#progress for you.";
message[3] = "That means if#something bad#happens, I can make#it unhappen for you.";
portrait[0] = 1937;
portrait[1] = 1937;
portrait[2] = 1934;
portrait[3] = 1934;
message_end = 3;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
