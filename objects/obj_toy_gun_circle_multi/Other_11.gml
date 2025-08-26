script_execute(scr_color_light_blue);
final_circle = circle_count - 1;
small_circle = 64;
outline_start = 120;
outline_start_inc = 0;
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

switch (global.player_weapon_modifier)
{
    case "Flint":
        shrink_speed = 5;
        outline_start_inc = shrink_speed * 10;
        break;
    
    case "Ice Pellets":
        shrink_speed = 5;
        outline_start_inc = shrink_speed * 10;
        break;
    
    default:
        shrink_speed = 6;
        outline_start_inc = shrink_speed * 10;
}

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
    outline_start += outline_start_inc;
}

shot_total = 0;
button_pressed = false;
circle_current = 0;
no_loop = false;
execute_create = true;
