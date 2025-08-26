if (live_call())
    return global.live_result;

var shop_name = global.shop_name;
var other_talker = false;

if (box_portait[0] != -4 && box_portait[message_current] != -4)
    other_talker = true;

var xx = obj_talk_screen_shop.x + 30;

if (other_talker)
    xx = obj_talk_screen_shop.x + 88;

var portrait_xx = 48;
draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (other_talker)
{
    var prt_animate;
    
    if (characters < message_length)
        prt_animate = -1;
    else
        prt_animate = 0;
    
    var portrait_y_disjoint = 130 + (sprite_get_height(box_portait[message_current]) / 3) + 28;
    
    if (box_portait[message_current] != -4)
        draw_sprite_ext(box_portait[message_current], prt_animate, portrait_xx, portrait_y_disjoint, 0.5, 0.5, 0, c_white, 1);
}

if (shop_name == "Hotel Shop")
{
    draw_set_color(c_fuchsia);
    draw_text_ext(xx, obj_talk_screen_shop.y + 10, string_hash_to_newline(message_draw_alt), global.text_separation_shop, global.text_linebreak_limit_shop);
}

draw_set_color(c_white);
draw_text_ext(xx, obj_talk_screen_shop.y + 10, string_hash_to_newline(message_draw), global.text_separation_shop, global.text_linebreak_limit_shop);
