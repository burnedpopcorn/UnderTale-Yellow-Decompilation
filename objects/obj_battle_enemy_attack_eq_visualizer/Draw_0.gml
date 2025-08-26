if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
draw_set_color(c_white);

for (var i = 0; i < eq_bar_number; i++)
{
    var xx = box.bbox_left + 6 + ((i + 1) * eq_bar_gap) + (eq_bar_width * i);
    var yy = box.bbox_bottom - 6;
    yy_2 = yy - eq_bar_height[i];
    draw_rectangle_color(xx, yy, xx + eq_bar_width, yy_2, c_gray, c_gray, c_white, c_white, false);
    
    if (eq_bar_draw_warning_bars == true)
    {
        yy_2 = yy - eq_bar_height_target[i];
        draw_set_alpha(0.3);
        draw_rectangle_color(xx, yy, xx + eq_bar_width, yy_2, c_red, c_red, c_red, c_red, false);
        draw_set_alpha(1);
    }
}
