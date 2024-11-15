var axis;

scr_cutscene_start();
scene = 0;
cutscene_timer = 0;
axis = instance_create(160, 320, obj_axis_npc);
axis.npc_direction = "up";
obj_pl.direction = 270;
