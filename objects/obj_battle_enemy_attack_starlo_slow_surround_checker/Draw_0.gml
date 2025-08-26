object[0] = 2864;
object[1] = 2860;
object[2] = 2861;
object[3] = 2870;
object[4] = 2877;
object[5] = 2878;
object[6] = 2892;
object[7] = 2377;
object[8] = 2379;
var alpha_new = starlo_take_aim_overlay_alpha;
var alpha_id = shader_alpha;

for (var i = 0; i < array_length_1d(object); i++)
{
    with (object[i])
    {
        shader_set(sh_grayscale);
        shader_set_uniform_f(alpha_id, alpha_new);
        draw_self();
        shader_reset();
    }
}
