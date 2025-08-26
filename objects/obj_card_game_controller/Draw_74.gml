draw_set_alpha(cardg_draw_alpha);
draw_sprite(spr_card_game_background, 0, 0, 0);
draw_sprite(spr_card_game_template, 0, 0, 0);
draw_sprite(spr_card_game_hud, 0, 0, 0);
draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(32, 16, string_hash_to_newline(string(clamp(instance_number(obj_card_game_card) - 20, 0, 999))));
draw_set_halign(fa_center);

if (cardg_flash == true)
{
    var time_in_seconds = cardg_timer / 30;
    
    if (time_in_seconds < cardg_time_gold)
        draw_set_color(c_yellow);
    else if (time_in_seconds < cardg_time_silver)
        draw_set_color(c_aqua);
    else
        draw_set_color(make_colour_rgb(80, 50, 20));
}

draw_text(290, 16, string_hash_to_newline(string((cardg_timer / 30) div 60) + ":" + string(floor(cardg_timer / 30) % 60)));

if (cardg_intro_countdown > 0)
{
    draw_set_halign(fa_center);
    var countdown_text;
    
    if (cardg_intro_countdown > 90)
        countdown_text = "3";
    else if (cardg_intro_countdown > 60)
        countdown_text = "2";
    else if (cardg_intro_countdown > 30)
        countdown_text = "1";
    else
        countdown_text = "GO!";
    
    draw_set_alpha(cardg_intro_countdown_alpha);
    draw_text_transformed(160, 80, string_hash_to_newline(countdown_text), 4, 4, 0);
    draw_set_alpha(cardg_draw_alpha);
}

if (cardg_victory == true)
{
    draw_set_alpha(cardg_draw_alpha * 0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, 320, 240, false);
    draw_set_alpha(cardg_draw_alpha);
    draw_set_color(c_white);
    draw_sprite(spr_card_game_victory, 0, 160, 80);
    draw_set_halign(fa_center);
    draw_text(160, 120, string_hash_to_newline(string(floor(cardg_g_gained)) + "G won!"));
}

if (cardg_failure == true)
{
    draw_set_alpha(cardg_draw_alpha * 0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, 320, 240, false);
    draw_set_alpha(cardg_draw_alpha);
    draw_set_color(c_white);
    draw_sprite(spr_card_game_failure, 0, 160, 80);
    draw_set_halign(fa_center);
    draw_text(160, 120, string_hash_to_newline("0G won. Better luck next time!"));
}

draw_set_alpha(1);
