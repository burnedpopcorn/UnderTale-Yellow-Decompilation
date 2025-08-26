var game_mode = global.game_mode;
var battle_enemy_name = global.battle_enemy_name;
draw_set_font(fnt_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (game_mode == "customs")
{
    draw_text_colour(147, 400, string_hash_to_newline("LV " + string(global.player_level)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
}
else if (game_mode == "yellow")
{
    if (battle_enemy_name == "flowey intro" || battle_enemy_name == "shufflers")
        draw_text_colour(200, 400, string_hash_to_newline("LV " + string(global.player_level)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
    else
        draw_text_colour(147, 400, string_hash_to_newline("LV " + string(global.player_level)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
}
