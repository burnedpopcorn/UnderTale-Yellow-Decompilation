draw_set_font(fnt_dotumche);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var battle_enemy_name = global.battle_enemy_name;
var game_mode = global.game_mode;

if (instance_exists(obj_quote_bubble_battle))
{
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 38, obj_quote_bubble_battle.y + 13);
        else if (battle_enemy_name == "ms mettaton")
            draw_text(obj_quote_bubble_battle.x + 38, obj_quote_bubble_battle.y + 13, string_hash_to_newline(message_draw));
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "dalv")
            scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 21, obj_quote_bubble_battle.y + 9);
        else if (battle_enemy_name == "martlet genocide")
            scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 21, obj_quote_bubble_battle.y + 9);
        else if (battle_enemy_name == "el bailador")
            scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 21, obj_quote_bubble_battle.y + 9);
    }
}
