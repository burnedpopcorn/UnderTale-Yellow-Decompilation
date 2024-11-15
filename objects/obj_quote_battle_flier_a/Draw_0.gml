var battle_enemy_name;

draw_set_font(fnt_dotumche);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
battle_enemy_name = global.battle_enemy_name;

if (battle_enemy_name == "flier solo" || battle_enemy_name == "flier penilla duo")
    scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 38, obj_quote_bubble_battle.y + 13);
else if (battle_enemy_name == "flier trio")
    scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 13, obj_quote_bubble_battle.y + 25);
