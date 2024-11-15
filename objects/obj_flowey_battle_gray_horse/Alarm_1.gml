var bul_count, bul_dir_mult, dir_start, i, bul;

if (live_call())
    return global.live_result;

instance_destroy();
bul_count = 7;
bul_dir_mult = 360 / bul_count;
dir_start = irandom_range(0, 360);

for (i = 0; i < bul_count; i++)
{
    bul = instance_create_depth(x, y, -100, obj_flowey_battle_phase_2_gray_pellet);
    bul.speed = 14;
    bul.direction = dir_start + (i * bul_dir_mult);
}
