if (bd_dist_passed == false)
    script_execute(scr_battle_draw_inside_battle_box);
else
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
