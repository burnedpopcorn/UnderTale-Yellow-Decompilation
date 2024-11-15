var alpha_new, alpha_id, i;

if (live_call())
    return global.live_result;

object[0] = 2863;
object[1] = 2859;
object[2] = 2860;
object[3] = 2869;
object[4] = 2876;
object[5] = 2877;
object[6] = 3073;
object[7] = 773;
object[8] = 16;
object[9] = 2879;
object[10] = 309;
object[11] = 145;
object[12] = 1144;
object[13] = 361;
object[14] = 566;
object[15] = 193;
object[16] = 328;
object[17] = 635;
object[18] = 459;
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
            shader_reset();
        }
    }
}
