if (live_call())
    return global.live_result;

draw_set_alpha(obj_crayon_minigame.draw_alpha);
draw_self();
draw_set_alpha(1);
