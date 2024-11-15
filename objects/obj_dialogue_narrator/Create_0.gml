if (live_call())
    return global.live_result;

local_dialogue_open = true;
letter_array = -1;
letter_current = 1;
letter_waiter = 0;
line_current = 0;
letter_speed = 0.5;
sndfnt = 99;
message[0] = "";
message_current = 0;
message_advance = false;
text_x[1] = 50;
text_y[1] = 20;
text_alpha[1] = 0;
text_x_mod = 0;
text_y_mod = 0;
white_text = false;
draw_set_font(fnt_main);
str_width = string_width("w");
draw_alpha = 0;
