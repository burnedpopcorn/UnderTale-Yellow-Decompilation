draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);

if (nostril_draw >= 0 && image_alpha > 0)
{
    if (sprite_index == spr_bowll_head_normal)
    {
        draw_sprite_ext(spr_bowll_nostrils_snort_shadow, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(spr_bowll_nostrils_snort, nostril_draw, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    }
    else if (sprite_index == spr_bowll_head_grateful)
    {
        draw_sprite_ext(spr_bowll_nostrils_snort_shadow, 0, x, y - 2, image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(spr_bowll_nostrils_snort, nostril_draw, x, y - 2, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    }
    else if (sprite_index == spr_bowll_head_critical)
    {
        draw_sprite_ext(spr_bowll_nostrils_snort_shadow, 0, x, y - 4, image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(spr_bowll_nostrils_snort, nostril_draw, x, y - 4, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    }
}
