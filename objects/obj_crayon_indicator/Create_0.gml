if (live_call())
    return global.live_result;

image_xscale = 1;
image_yscale = 1;
image_alpha = obj_crayon_minigame.draw_alpha;
sprite_index = asset_get_index("spr_size_crayon_" + string(obj_crayon_minigame.crayon_selected));
