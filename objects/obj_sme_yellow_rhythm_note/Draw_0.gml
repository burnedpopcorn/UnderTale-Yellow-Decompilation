if (live_call())
    return global.live_result;

draw_sprite_clip_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 16777215, image_alpha, box.bbox_left + 5, box.bbox_top, box.sprite_width - 10, box.sprite_height - 37);

if (obj_battle_el_bailador_controller.battle_el_bail_event_tutorial == true && global.option_autorhythm == false)
{
    var yy = y - 15;
    draw_set_font(fnt_battle);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_alpha(hint_marker_alpha);
    
    if (in_hint_boundary == false)
    {
        draw_set_color(c_gray);
    }
    else
    {
        draw_set_color(c_black);
        draw_text_ext_transformed(x - 1, yy - 1, global.action_key, 0, 10, hint_marker_scale, hint_marker_scale, 0);
        draw_text_ext_transformed(x - 1, yy + 1, global.action_key, 0, 10, hint_marker_scale, hint_marker_scale, 0);
        draw_text_ext_transformed(x + 1, yy - 1, global.action_key, 0, 10, hint_marker_scale, hint_marker_scale, 0);
        draw_text_ext_transformed(x + 1, yy + 1, global.action_key, 0, 10, hint_marker_scale, hint_marker_scale, 0);
        draw_text_ext_transformed(x + 1, yy, global.action_key, 0, 10, hint_marker_scale, hint_marker_scale, 0);
        draw_text_ext_transformed(x - 1, yy, global.action_key, 0, 10, hint_marker_scale, hint_marker_scale, 0);
        draw_set_color(c_white);
    }
    
    draw_text_ext_transformed(x, yy, global.action_key, 0, 10, hint_marker_scale, hint_marker_scale, 0);
    draw_set_alpha(1);
    draw_set_valign(fa_top);
}
