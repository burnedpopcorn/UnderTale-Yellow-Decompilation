if (live_call())
    return global.live_result;

instance_destroy();
var bul_count = 7;
var bul_dir_mult = 360 / bul_count;
var dir_start = irandom_range(0, 360);

for (var i = 0; i < bul_count; i++)
{
    var bul = instance_create_depth(x, y, -100, obj_flowey_battle_phase_2_gray_pellet);
    bul.speed = 14;
    bul.direction = dir_start + (i * bul_dir_mult);
}
