if (live_call())
    return global.live_result;

draw_set_font(fnt_main);
draw_set_halign(fa_center);
display_set_gui_size(640, 480);
draw_text(320, 60, "Undertale Yellow DEBUG BUILD");
draw_set_color(c_white);
draw_text(320, 100, "CONTINUE");
draw_text(320, 160, "RESET OPTIONS:");
draw_text(320, 190, "ROUTE: " + route_selection);
draw_text(320, 210, "BONUS ITEMS:" + string(bonus_items));
draw_text(320, 230, "FOLLOWER:" + object_get_name(follower_selection));
draw_text(320, 250, "ROOM: " + room_selection);
draw_text(320, 270, "RESET");
draw_text(320, 300, "INSTANT CEROBA");
draw_text(320, 330, "INSTANT FLOWEY");
draw_text(320, 360, "INSTANT MARTLET");
draw_set_color(c_white);
var soul_xx = 240;
var soul_yy = 100;

switch (menu_selection)
{
    case 0:
        soul_yy = 100;
        break;
    
    case 1:
        soul_yy = 190;
        break;
    
    case 2:
        soul_yy = 210;
        break;
    
    case 3:
        soul_yy = 230;
        break;
    
    case 4:
        soul_yy = 250;
        break;
    
    case 5:
        soul_yy = 270;
        break;
    
    case 6:
        soul_yy = 300;
        break;
    
    case 7:
        soul_yy = 330;
        break;
    
    case 8:
        soul_yy = 360;
        break;
}

draw_sprite(spr_heart_yellow_down, 0, soul_xx, soul_yy + 8);
draw_set_halign(fa_left);
display_set_gui_size(320, 240);
