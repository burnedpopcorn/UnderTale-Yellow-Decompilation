scr_cutscene_end();
obj_pl.image_alpha = 1;
game_restart();
instance_create(0, 0, obj_darkruins_01_resettext);
scr_initialize();
application_surface_draw_enable(true);
