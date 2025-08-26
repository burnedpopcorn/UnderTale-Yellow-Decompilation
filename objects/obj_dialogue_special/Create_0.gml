if (live_call())
    return global.live_result;

letter_array = -1;
letter_current = 1;
letter_waiter = 0;
line_current = 0;
letter_speed = 1;
sndfnt = snd_talk_default;
message[0] = "";
message_current = 0;
message_advance = false;
position = 0;

if (instance_exists(obj_pl))
{
    obj_pl.state = scr_frozen_state;
    
    if (obj_pl.y > (__view_get(e__VW.YView, 0) + 150))
        position = 1;
    else
        position = 0;
}

can_skip = false;
can_draw = false;
text_x[1] = 30;
text_col = 16777215;
text_x_mod = 0;
text_y_mod = 0;
mode = "swirl";
swirl_deg = 360;
skippable = true;
alarm[1] = 1;
global.dialogue_open = true;
draw_set_font(fnt_main);
str_width = string_width("w");
