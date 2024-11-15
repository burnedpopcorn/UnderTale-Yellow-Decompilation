var alphys, martlet;

if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
draw_alpha = 1;
global.cutscene = true;
obj_pl.image_alpha = 0;
alphys = instance_create_depth(118, 138, -100, obj_alphys_npc);

with (alphys)
    npc_direction = "right";

martlet = instance_create_depth(190, 138, -100, obj_martlet_npc);

with (martlet)
    npc_direction = "left";
