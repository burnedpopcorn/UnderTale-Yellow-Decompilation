var alpha_new, alpha_id, i;

object[0] = 2863;
object[1] = 2859;
object[2] = 2860;
object[3] = 2869;
object[4] = 2876;
object[5] = 2877;
alpha_new = greyscale_overlay_alpha;
alpha_id = shader_alpha;

for (i = 0; i < array_length_1d(object); i++)
{
    with (object[i])
    {
        shader_set(sh_grayscale);
        shader_set_uniform_f(alpha_id, alpha_new);
        draw_self();
        shader_reset();
    }
}
