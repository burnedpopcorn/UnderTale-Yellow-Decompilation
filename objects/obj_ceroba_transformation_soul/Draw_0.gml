if (live_call())
    return global.live_result;

if (is_charging && !is_charged)
{
    draw_set_circle_precision(8);
    var dir_offset = 180 * charge_percentage;
    var distance = 25 * charge_percentage;
    var circle_alpha = 0.8 - charge_percentage;
    var custom_col = make_color_rgb(255, 255, 255 - (255 * charge_percentage));
    draw_set_color(custom_col);
    draw_set_alpha(circle_alpha);
    
    for (var i = 0; i < 360; i += 90)
    {
        var xx = x + lengthdir_x(distance, i + dir_offset);
        var yy = y + lengthdir_y(distance, i + dir_offset);
        draw_circle(xx, yy, 6, false);
    }
    
    draw_set_alpha(1);
    draw_set_circle_precision(24);
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha);

if (draw_hint == true)
{
    var battle_box = obj_dialogue_box_battle_transformation_any;
    var hint_scale = 1.5 + (sin(current_time / 100) * 0.5);
    draw_set_font(fnt_battle);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(hint_alpha);
    draw_set_color(c_white);
    draw_text_transformed(x - 40, y, global.action_key, hint_scale, hint_scale, 0);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}
