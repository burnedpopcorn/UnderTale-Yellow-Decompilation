if (grey < 10)
    grad_direction = true;
else if (grey > 250)
    grad_direction = false;

if (grad_direction)
    grey += 2;
else
    grey -= 3;

color = make_color_rgb(grey, grey, grey);
draw_set_color(color);
draw_rectangle(x, y, (room_width / 2) + (room_width / index), (room_height / 2) + (room_height / index), false);
