var enemy_attack = global.enemy_attack;
draw_set_font(fnt_dotumche);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + 21, obj_quote_bubble_battle.y + 9);

if (color_count >= 1)
{
    if (enemy_attack == "Decibat Wave Blue")
    {
        script_execute(scr_color_light_blue);
        draw_set_color(c_lightblue);
    }
    
    if (enemy_attack == "Decibat Wave Orange")
        draw_set_color(c_orange);
    
    scr_draw_text_effect_twitchy_quotebubble_battle(message_2[message_current], obj_quote_bubble_battle.x + 21, obj_quote_bubble_battle.y + 9);
}
