var battle_box, hint_scale;

if (live_call())
    return global.live_result;

if (hint_draw == true)
{
    battle_box = 3154;
    hint_scale = 1.5 + (sin(current_time / 100) * 0.5);
    draw_set_font(fnt_battle);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(hint_alpha);
    draw_text_transformed(battle_box.bbox_left - 20, battle_box.y, global.cancel_key, hint_scale, hint_scale, 0);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}
