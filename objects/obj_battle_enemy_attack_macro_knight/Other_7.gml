if (live_call())
    return global.live_result;

if (sprite_index == spr_bigfrog_knight_start_run)
{
    sprite_index = spr_bigfrog_knight_run;
    image_index = 0;
    image_speed = 1;
}
