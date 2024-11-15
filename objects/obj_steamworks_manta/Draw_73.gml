draw_set_alpha(arrows_alpha);

if (can_dock == "up")
    draw_sprite_ext(spr_manta_arrow_dock, arrows_frame, x, y - 28, arrow_size[0], arrow_size[0], 90, arrow_color[0], arrows_alpha);
else if (up_free)
    draw_sprite_ext(spr_manta_arrow, arrows_frame, x, y - 28, arrow_size[0], arrow_size[0], 90, arrow_color[0], arrows_alpha);

if (can_dock == "down")
    draw_sprite_ext(spr_manta_arrow_dock, arrows_frame, x, y + 28, arrow_size[1], arrow_size[1], 270, arrow_color[1], arrows_alpha);
else if (down_free)
    draw_sprite_ext(spr_manta_arrow, arrows_frame, x, y + 28, arrow_size[1], arrow_size[1], 270, arrow_color[1], arrows_alpha);

if (can_dock == "left")
    draw_sprite_ext(spr_manta_arrow_dock, arrows_frame, x - 28, y, arrow_size[2], arrow_size[2], 180, arrow_color[2], arrows_alpha);
else if (left_free)
    draw_sprite_ext(spr_manta_arrow, arrows_frame, x - 28, y, arrow_size[2], arrow_size[2], 180, arrow_color[2], arrows_alpha);

if (can_dock == "right")
    draw_sprite_ext(spr_manta_arrow_dock, arrows_frame, x + 28, y, arrow_size[3], arrow_size[3], 0, arrow_color[3], arrows_alpha);
else if (right_free)
    draw_sprite_ext(spr_manta_arrow, arrows_frame, x + 28, y, arrow_size[3], arrow_size[3], 0, arrow_color[3], arrows_alpha);

draw_set_alpha(1);
