draw_set_font(fnt_dotumche);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var battle_enemy_name = global.battle_enemy_name;
var target_bubble = 2141;

if (spawner != -4)
    target_bubble = spawner;

if (text_effect == "twitchy")
{
    if (battle_enemy_name == "frostermit know cone duo")
        scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], target_bubble.x + 9, target_bubble.y + 9);
    else
        scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], target_bubble.x + 21, target_bubble.y + 9);
}
else if (text_effect == "circle")
{
    if (battle_enemy_name == "frostermit know cone duo")
        scr_draw_text_effect_circle_quotebubble_battle(message[message_current], target_bubble.x + 9, target_bubble.y + 9);
    else
        scr_draw_text_effect_circle_quotebubble_battle(message[message_current], target_bubble.x + 21, target_bubble.y + 9);
}

if (color_count >= 1)
{
    if (text_effect_2 == "twitchy")
    {
        if (battle_enemy_name == "frostermit know cone duo")
            scr_draw_text_effect_twitchy_quotebubble_battle(message_2[message_current], target_bubble.x + 9, target_bubble.y + 9);
        else
            scr_draw_text_effect_twitchy_quotebubble_battle(message_2[message_current], target_bubble.x + 21, target_bubble.y + 9);
    }
    else if (text_effect_2 == "circle")
    {
        if (battle_enemy_name == "frostermit know cone duo")
            scr_draw_text_effect_circle_quotebubble_battle(message_2[message_current], target_bubble.x + 9, target_bubble.y + 9);
        else
            scr_draw_text_effect_circle_quotebubble_battle(message_2[message_current], target_bubble.x + 21, target_bubble.y + 9);
    }
}
