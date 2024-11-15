if (live_call())
    return global.live_result;

draw_set_font(global.font_type_text);
draw_set_alpha(draw_alpha);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
script_execute(scr_draw_text_effect_twitchy_textbox_battle);
draw_set_alpha(1);
