if (sprite_index != -4)
    draw_self();

if (global.enemy_dead || global.enemy_spared)
{
    draw_set_color(c_black);
    draw_set_alpha(1 - image_alpha);
    draw_rectangle(0, 0, 640, 244, false);
    draw_set_alpha(1);
}
