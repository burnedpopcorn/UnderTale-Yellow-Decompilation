var lives_x, lives_y;

draw_set_color(c_white);
draw_set_font(fnt_arcade);
draw_text_transformed(85, 50, string_hash_to_newline(arcade_score), 0.5, 0.5, 0);
lives_x = 210;
lives_y = 58;

if (arcade_lives > 0)
    draw_sprite(spr_arcade_health, 0, lives_x + 14, lives_y);

if (arcade_lives > 1)
    draw_sprite(spr_arcade_health, 0, lives_x + 7, lives_y);

if (arcade_lives > 2)
    draw_sprite(spr_arcade_health, 0, lives_x, lives_y);

if (arcade_intro == true)
{
    draw_set_alpha(arcade_intro_alpha);
    draw_sprite(spr_arcade_tutorial, 0, room_width / 2, room_height / 2);
    draw_set_alpha(1);
}

if (arcade_start_screen)
    draw_sprite(spr_arcade_start, 0, room_width / 2, room_height / 2);

if (arcade_game_over)
{
    draw_set_halign(fa_center);
    draw_sprite(spr_arcade_game_over, 0, room_width / 2, room_height / 2);
    draw_text_transformed(160, 60, string_hash_to_newline("SCORE: " + string(arcade_score)), 0.5, 0.5, 0);
    draw_text_transformed(160, 160, string_hash_to_newline("GAME OVER"), 0.5, 0.5, 0);
    draw_set_halign(fa_left);
}

if (arcade_game_win)
{
    draw_set_halign(fa_center);
    draw_sprite(spr_arcade_game_win, 0, room_width / 2, room_height / 2);
    draw_text_transformed(160, 60, string_hash_to_newline("SCORE: " + string(arcade_score)), 0.5, 0.5, 0);
    draw_text_transformed(160, 160, string_hash_to_newline("YOU WIN!"), 0.5, 0.5, 0);
    draw_set_halign(fa_left);
}
