disjoint_x_sign = 1;
disjoint_x[0] = 0;
disjoint_y[0] = -32;
disjoint_x[1] = -32;
disjoint_y[1] = -10;
disjoint_x[2] = -22;
disjoint_y[2] = 32;
disjoint_x[3] = 22;
disjoint_y[3] = 32;
disjoint_x[4] = 32;
disjoint_y[4] = -10;
dj_order[0] = 1;
dj_order[1] = 3;
dj_order[2] = 0;
dj_order[3] = 2;
dj_order[4] = 4;

switch (global.player_weapon_modifier)
{
    case "Silver Ammo":
        outline = 45;
        shrink_speed = 3;
        break;
    
    default:
        outline = 30;
        shrink_speed = 2;
}

small_circle = 16;
shrink = true;
color[0] = c_white;
color[1] = c_black;
color_number = 0;
cursor_color = color[0];
outline_color = color[1];
color_alt_speed = 0.2;
color_alt_max = 1;
color_alt_total = 0;
shot_add = 0;
shot_type = "nothing";
button_pressed = false;
no_loop = false;
