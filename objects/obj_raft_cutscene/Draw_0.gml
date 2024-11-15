if (HOTLAND_TRANSITION)
    draw_sprite(spr_transition_waterfall, 0, transition_x, __view_get(e__VW.YView, 0));

if (LAVA_TRANSITION)
    draw_sprite(spr_transition_hotland, 0, transition_x, __view_get(e__VW.YView, 0));

if (CAVE_TRANSITION)
    draw_sprite(spr_transition_cave, 0, transition_x, __view_get(e__VW.YView, 0));
