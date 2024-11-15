function draw_outline()
{
    draw_sprite_ext(argument[0], argument[1], argument[2] - 1, argument[3] - 1, argument[4], argument[5], argument[6], argument[7], argument[8]);
    draw_sprite_ext(argument[0], argument[1], argument[2], argument[3] - 1, argument[4], argument[5], argument[6], argument[7], argument[8]);
    draw_sprite_ext(argument[0], argument[1], argument[2] + 1, argument[3] - 1, argument[4], argument[5], argument[6], argument[7], argument[8]);
    draw_sprite_ext(argument[0], argument[1], argument[2] + 1, argument[3], argument[4], argument[5], argument[6], argument[7], argument[8]);
    draw_sprite_ext(argument[0], argument[1], argument[2] + 1, argument[3] + 1, argument[4], argument[5], argument[6], argument[7], argument[8]);
    draw_sprite_ext(argument[0], argument[1], argument[2], argument[3] + 1, argument[4], argument[5], argument[6], argument[7], argument[8]);
    draw_sprite_ext(argument[0], argument[1], argument[2] - 1, argument[3] + 1, argument[4], argument[5], argument[6], argument[7], argument[8]);
    draw_sprite_ext(argument[0], argument[1], argument[2] - 1, argument[3], argument[4], argument[5], argument[6], argument[7], argument[8]);
}
