if (live_call())
    return global.live_result;

draw_set_alpha(hint_alpha);
draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(50, 200, string("{0} - Shoot", global.action_key));

if (global.option_autoshoot)
{
    draw_set_halign(fa_center);
    draw_text(160, 180, string("{0} - Autofire", global.pause_key));
}

draw_set_halign(fa_right);
draw_text(270, 200, string("{0} - Dash", global.cancel_key));
draw_set_alpha(1);
