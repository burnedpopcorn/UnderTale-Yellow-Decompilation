text_effect = "twitchy";
message[0] = "Alright, uhhh...";
message[1] = "Martlet of the#Underground Royal#Guard is hereby#retreating.";
message[2] = "I mean, there's gotta#be a better way,#right?";
message[3] = "I'll uhhh... I'll come#up with something!";
message[4] = "I'll find you again,#small human!";
message[5] = "With a new and#improved plan of#action!";
portrait_head[0] = 1291;
portrait_hand[0] = 2058;
portrait_head[1] = 2087;
portrait_hand[1] = 2058;
portrait_head[2] = 314;
portrait_hand[2] = 2058;
portrait_head[3] = 314;
portrait_hand[3] = 2058;
portrait_head[4] = 2087;
portrait_hand[4] = 2058;
portrait_head[5] = 2087;
portrait_hand[5] = 2058;
message_end = 5;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
