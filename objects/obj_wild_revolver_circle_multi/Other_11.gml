script_execute(scr_color_light_blue);
can_execute = false;
final_circle = circle_count - 1;
shrink_speed = 2;
small_circle = 16;
outline_start = 30;
imagea_default = 1;
imagea_dec = 0.05263157894736842;
thick_default = 0;
thick_increase = 2;
color_default[0] = c_white;
color_default[1] = c_black;
color_hit[0] = c_lightblue;
color_hit[1] = c_yellow;
color_hit[2] = c_red;
color_alt_speed = 0.5;
color_alt_max = 1;

for (i = 0; i < circle_count; i++)
{
    outline[i] = outline_start;
    shrink[i] = true;
    hit[i] = 0;
    imagea[i] = imagea_default;
    thickness[i] = thick_default;
    cursor_color[i] = color_default[0];
    outline_color[i] = color_default[1];
    color_hit_number[i] = 0;
    color_alt_total[i] = -color_alt_speed;
    outline_start += (shrink_speed * 15);
}

shot_total = 0;
shot_total_pre = 0;
button_pressed = false;
button_pressed_main = false;
button_pressed_pre = false;
circle_current = 0;
no_loop = false;
execute_create = true;
