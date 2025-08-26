if (live_call())
    return global.live_result;

object[0] = 2864;
object[1] = 2860;
object[2] = 2861;
object[3] = 2870;
object[4] = 2877;
object[5] = 2878;
object[6] = 485;
object[7] = 663;
object[8] = 220;
object[9] = 930;
object[10] = 2880;
object[11] = 672;
object[12] = 2954;
object[13] = 239;
object[14] = 549;
var alpha_new = starlo_take_aim_overlay_alpha;
var alpha_id = shader_alpha;

for (var i = 0; i < array_length_1d(object); i++)
{
    if (instance_exists(object[i]))
    {
        with (object[i])
        {
            shader_set(sh_grayscale);
            shader_set_uniform_f(alpha_id, alpha_new);
            draw_self();
            
            if (object_index == obj_martlet_final_wing)
            {
                if (!surface_exists(wing_surf))
                    wing_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
                
                surface_set_target(wing_surf);
                draw_clear_alpha(c_black, 0);
                draw_sprite_ext(spr_martlet_final_wing_mask, image_index, x, y, image_xscale, 1, image_angle, c_white, image_alpha);
                draw_set_blend_mode_ext(bm_dest_alpha, bm_inv_dest_alpha);
                draw_sprite_tiled(space_test, 0, 0, 0);
                draw_set_blend_mode(bm_normal);
                surface_reset_target();
                draw_surface(wing_surf, 0, 0);
            }
            
            shader_reset();
        }
    }
}
