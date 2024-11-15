if (live_call())
    return global.live_result;

y = 110;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
image_index = image_number - 1;
image_speed = 1;
alarm[0] = 50;
fill_percentage = 0;
fill_percentage_current = 0;
bullet_hit_draw_timer = 0;
hit_show_timer = 0;
scene = 0;
cutscene_timer = 0;
diamond_effect_alpha = 0;
diamond_effect_scale = 1;
instance_create_depth(x, y - 100, -1100, obj_ceroba_phase_2_bell);
instance_create_depth(x + 80, y - 20, -1100, obj_ceroba_phase_2_bell);
instance_create_depth(x, y + 70, -1100, obj_ceroba_phase_2_bell);
instance_create_depth(x - 80, y - 20, -1100, obj_ceroba_phase_2_bell);
draw_alpha = 0;
