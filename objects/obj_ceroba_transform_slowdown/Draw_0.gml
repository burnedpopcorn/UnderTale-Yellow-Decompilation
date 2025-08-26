if (live_call())
    return global.live_result;

object[0] = 2864;
object[1] = 2860;
object[2] = 2861;
object[3] = 2870;
object[4] = 2877;
object[5] = 2878;
object[6] = 3074;
object[7] = 773;
object[8] = 16;
object[9] = 2880;
object[10] = 309;
object[11] = 145;
object[12] = 1144;
object[13] = 361;
object[14] = 566;
object[15] = 193;
object[16] = 328;
object[17] = 635;
object[18] = 459;
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
            shader_reset();
        }
    }
}
