small_circle = 64;
outline = 120;
shrink = true;

switch (global.player_weapon_modifier)
{
    case "Silver Ammo":
        shrink_speed = 9;
        break;
    
    default:
        shrink_speed = 6;
}

color[0] = c_white;
color[1] = c_black;
color_number = 0;
cursor_color = color[0];
outline_color = color[1];
color_alt_speed = 0.2;
color_alt_max = 1;
color_alt_total = 0;
shot_type = "nothing";
button_pressed = false;
no_loop = false;
hit_object = 2911;
