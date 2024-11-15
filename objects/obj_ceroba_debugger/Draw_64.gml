if (live_call())
    return global.live_result;

draw_set_color(c_white);
draw_set_font(fnt_battle);
draw_set_alpha(0.25);

if (variable_global_exists("attack_cycle"))
    draw_text_transformed(5, 5, "attack_cycle: " + string(global.attack_cycle), 0.5, 0.5, 0);

draw_set_alpha(1);
