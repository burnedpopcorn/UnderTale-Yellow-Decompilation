text_effect = "twitchy";
message[0] = "There you go! Just#like that!";
message[1] = "...";
message[2] = "Oh, it's my turn!#Sorry!";
message[3] = "See, the guidebook#didn't say it would#hurt really...";
message[4] = "Well, whatever, back#to protocol! Now it's#my turn!";
portrait_head[0] = 126;
portrait_hand[0] = 2058;
portrait_head[1] = 126;
portrait_hand[1] = 2058;
portrait_head[2] = 3540;
portrait_hand[2] = 2058;
portrait_head[3] = 2116;
portrait_hand[3] = 2058;
portrait_head[4] = 2087;
portrait_hand[4] = 2058;
message_end = 4;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;