var i;

if (live_call())
    return global.live_result;

for (i = 0; i <= 3; i++)
    draw_sprite_ext(sprite_index, i, xx[i], yy[i], 1, 1, iangle[i], c_white, image_alpha);
