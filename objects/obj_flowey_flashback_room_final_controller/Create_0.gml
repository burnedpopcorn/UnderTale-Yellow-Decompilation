if (live_call())
    return global.live_result;

layer_list = ds_list_create();
ds_list_add(layer_list, "The_Ruins", "Dark_Ruins", "Waterfall", "The_Dunes", "Hotland", "The_Steamworks", "New_Home", "True_Lab");
layer_remove_x_next = 312;
layer_remove_x_inc = 312;
scene = 0;
cutscene_timer = 0;
fade_out = false;
draw_alpha = 0;
draw_alpha_white = 1;

with (instance_create(0, 0, obj_flowey_battle_ow_controller))
    spawn_vines = false;

depth = -10;
obj_pl.image_alpha = 0;
scr_cutscene_end();
