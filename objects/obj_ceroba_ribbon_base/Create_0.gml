var wdirection, ribbon_1, ribbon_2;

scene = 0;
cutscene_timer = 0;
wdirection = choose(-1, 1);
ribbon_1 = instance_create_depth(x - 40, y + 15, depth + 1, obj_verlet_rope_generator);
ribbon_1.wind_direction = wdirection;
ribbon_2 = instance_create_depth(x + 40, y + 15, depth + 1, obj_verlet_rope_generator);
ribbon_2.wind_direction = wdirection;
bullet_hit_points = 16;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
