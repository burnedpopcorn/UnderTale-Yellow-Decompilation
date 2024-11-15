var x_offset;

if (live_call())
    return global.live_result;

if (instance_exists(obj_heart_battle_menu_fight_fake_martlet))
{
    draw_set_font(global.font_type_text);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    scr_battle_core_directory_enemy_1_name(68, 20);
}

draw_set_alpha(draw_alpha_white);
draw_set_color(c_white);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);
draw_set_alpha(save_message_alpha);
draw_set_font(fnt_main_battle);
draw_text(20, 20, save_message);
draw_set_alpha(1);

if (draw_enabled == false)
    exit;

draw_set_font(fnt_dotumche);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
x_offset = 21;

if (text_effect == "twitchy")
    scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + 9);
else if (text_effect == "circle")
    scr_draw_text_effect_circle_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + 9);
