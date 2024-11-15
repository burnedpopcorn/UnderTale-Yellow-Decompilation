can_execute = false;

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
shot_total_pre = 0;
shot_type = "nothing";
button_pressed = false;
button_pressed_main = false;
button_pressed_pre = false;
no_loop = false;
