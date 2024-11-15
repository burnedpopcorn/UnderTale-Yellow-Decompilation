var martlet;

if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
draw_alpha = 1;
draw_alpha_white = 0;
global.cutscene = true;
obj_pl.image_alpha = 0;
martlet = instance_create_depth(200, 110, -100, obj_martlet_npc);

with (martlet)
    npc_direction = "up";
