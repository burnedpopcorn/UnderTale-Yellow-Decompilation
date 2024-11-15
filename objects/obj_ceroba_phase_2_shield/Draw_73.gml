if (draw_alpha > 0)
{
    draw_set_alpha(draw_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, 640, 480, false);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
    
    if (instance_exists(obj_ceroba_phase_2_bell))
    {
        with (obj_ceroba_phase_2_bell)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    }
}
