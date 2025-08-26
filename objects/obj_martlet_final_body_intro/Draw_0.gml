if (live_call())
    return global.live_result;

draw_self();

if (!surface_exists(wing_surf))
    wing_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));

surface_set_target(wing_surf);
draw_clear_alpha(c_black, 0);
var sprite_name = sprite_get_name(sprite_index) + "_mask";
var mask_asset = asset_get_index(sprite_name);

if (mask_asset != -1)
{
    draw_sprite_ext(mask_asset, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    draw_set_blend_mode_ext(bm_dest_alpha, bm_inv_dest_alpha);
    draw_sprite_tiled(space_test, 0, 0, 0);
    draw_set_blend_mode(bm_normal);
}

surface_reset_target();
draw_surface(wing_surf, 0, 0);
