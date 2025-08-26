if (live_call())
    return global.live_result;

position = 0;
position_array[0] = -1;

if (instance_exists(obj_pl))
{
    obj_pl.state = scr_frozen_state;
    
    if (obj_pl.y > (__view_get(e__VW.YView, 0) + 150))
        position = 1;
    else
        position = 0;
}

choice = false;
ch[1] = "";
ch[2] = "";
ch[3] = "";
ch[4] = "";
p = 1;
ch_msg = -1;
ch_delay = -1;
ch_alpha = 1;
alpha_fade = false;
outcome = 0;
textWidth = 210;
textSep = 16;
message_current = 0;
message_actual = "";
message_actual_col[0] = "";
message_reset = false;
cutoff = 0;
counter = 0;
message_timer = -1;
mT = -1;
portrait = true;
prt[0] = spr_collisionbox;
image_speed = 0.2;
message[0] = "";
talker[0] = -4;
talker_current = 0;
message_col[0][0] = "";
col_modif[0] = c_blue;
col_modif[1] = c_red;
color = false;
color_set = false;
sndfnt = sndfnt_flowey;
sndfnt_array[0] = -4;
global.dialogue_open = true;
dialogue_is_minishop = false;
skippable = true;
dialogue_font = 9;
portrait_idle_animated = 0;
portrait_idle_frame = 0;
portrait_can_animate = true;
force_skip = false;
