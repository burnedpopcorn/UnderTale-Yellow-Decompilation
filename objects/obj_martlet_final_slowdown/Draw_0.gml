var alpha_new, alpha_id, i;

if (live_call())
    return global.live_result;

object[0] = 2863;
object[1] = 2859;
object[2] = 2860;
object[3] = 2869;
object[4] = 2876;
object[5] = 2877;
object[6] = 485;
object[7] = 663;
object[8] = 220;
object[9] = 930;
object[10] = 2879;
object[11] = 672;
object[12] = 2953;
object[13] = 239;
object[14] = 549;
alpha_new = starlo_take_aim_overlay_alpha;
alpha_id = shader_alpha;

for (i = 0; i < array_length_1d(object); i++)
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
                draw_set_blend_mode_ext(7, bm_inv_dest_alpha);
                draw_sprite_tiled(space_test, 0, 0, 0);
                draw_set_blend_mode(bm_normal);
                surface_reset_target();
                draw_surface(wing_surf, 0, 0);
            }
            
            shader_reset();
        }
    }
}
