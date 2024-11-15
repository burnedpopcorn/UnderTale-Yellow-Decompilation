draw_set_font(fnt_dotumche);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (obj_quote_bubble_battle.position == 0 || obj_quote_bubble_battle.position == 2)
    scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 21, obj_quote_bubble_battle.y + 9);
else if (obj_quote_bubble_battle.position == 1)
    scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 18, obj_quote_bubble_battle.y + 9);
