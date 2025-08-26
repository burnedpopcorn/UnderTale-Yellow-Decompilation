if (draw_enabled == false)
    exit;

draw_set_font(fnt_dotumche);
draw_set_color(c_black);

if (global.enemy_sparing && message_current == 2)
    draw_set_color(c_fuchsia);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
var x_offset = 21;
var y_offset = 9;

if (global.turns_passed == 0 && message_current == 0)
    y_offset = 25;

if (enemy_talker != 0 && enemy_talker[message_current] != 0)
    x_offset = 9;

if (text_effect == "twitchy")
    scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + y_offset);
else if (text_effect == "circle")
    scr_draw_text_effect_circle_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + y_offset);
