draw_sprite(logo_yellow, image_index, x, y);

if (appear == true)
{
    draw_set_font(fnt_main);
    draw_set_color(c_gray);
    draw_text_transformed(__view_get(e__VW.XView, 0) + 160, 400, string_hash_to_newline("[ Press Z or ENTER ]"), 2, 2, 0);
}
