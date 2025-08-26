if (live_call())
    return global.live_result;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
var target_pos = target_angle + 90;

for (i = 0; i < target_max; i++)
{
    if ((target_pos - ((i * 360) / target_max)) >= -(360 / target_max))
    {
        var x_offset = target_radius * image_xscale * cos(degtorad(target_pos - ((i * 360) / target_max)));
        var y_offset = target_radius * image_xscale * sin(degtorad(target_pos - ((i * 360) / target_max)));
        draw_sprite_ext(target_sprite, image_index, x + x_offset, y - y_offset, image_xscale, image_yscale, target_angle - ((i * 360) / target_max), c_white, image_alpha);
    }
}

draw_sprite_ext(spr_wild_revolver_reticle, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
