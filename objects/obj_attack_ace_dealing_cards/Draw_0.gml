var rectangle_width, rectangle_height;

draw_sprite_ext(spr_attack_ace_card_back, 0, x, y, 1, 1, 0, c_white, image_alpha);

if (card_draw_warning_rectangle == true)
{
    rectangle_width = sprite_get_width(spr_attack_ace_card_back);
    rectangle_height = sprite_get_height(spr_attack_ace_card_back);
    draw_set_color(c_red);
    draw_set_alpha(0.75);
    draw_rectangle(card_target_x, card_target_y, card_target_x + rectangle_width, card_target_y + rectangle_height, false);
    draw_set_alpha(1);
}
