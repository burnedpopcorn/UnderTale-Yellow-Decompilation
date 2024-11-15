var x_offset, battle_enemy_name;

if (draw_enabled == false)
    exit;

draw_set_font(fnt_dotumche);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
x_offset = 21;

if (enemy_talker != 0 && enemy_talker[message_current] != 0)
    x_offset = 9;

battle_enemy_name = global.battle_enemy_name;

if (text_effect == "twitchy")
    scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + 9);
else if (text_effect == "circle")
    scr_draw_text_effect_circle_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + 9);

draw_set_color(c_white);
draw_set_alpha(white_fade_alpha);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);
