var battle_box = obj_dialogue_box_battle_transformation_any;
var j = 2;
i = ds_list_size(x_list) - 1;

while (i >= 0)
{
    var x0 = ds_list_find_value(x_list, i);
    var y0 = ds_list_find_value(y_list, i);
    var angle0 = 0;
    var image_alpha_trail = 1 / j;
    draw_sprite_ext(trail_sprite, 0, x0, y0, 1, 1, angle0, c_white, image_alpha_trail * image_alpha);
    j += 1;
    i -= 1;
}

if (movement_mode == 2)
{
    var draw_circle_alpha = image_alpha * circle_alpha;
    draw_set_alpha(draw_circle_alpha);
    draw_set_color(c_white);
    draw_circle(battle_box.x, battle_box.y, base_distance, false);
    draw_set_color(c_black);
    draw_circle(battle_box.x, battle_box.y, base_distance - 2, false);
    draw_set_alpha(1);
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha);
