var ed;

instance_create(200, 400, obj_starlo_npc);
obj_starlo_npc.image_alpha = 0;
obj_starlo_npc.npc_direction = "up";
instance_create(200, 400, obj_ed_npc);
obj_ed_npc.image_alpha = 0;
obj_ed_npc.npc_direction = "up";
ed = 1162;
ed.up_sprite = spr_ed_up_walk_clover;
ed.right_sprite = spr_ed_right_walk_clover;
ed.down_sprite = spr_ed_down_walk_clover;
ed.left_sprite = spr_ed_left_walk_clover;
ed.up_sprite_idle = spr_ed_up_walk_clover;
ed.right_sprite_idle = spr_ed_right_walk_clover;
ed.down_sprite_idle = spr_ed_down_walk_clover;
ed.left_sprite_idle = spr_ed_left_walk_clover;
instance_create(266, 212, obj_npc_ceroba_saloon);
instance_create(200, 115, obj_saloon_stool);
obj_pl.image_alpha = 0;
camera = instance_create(obj_starlo_npc.x, obj_starlo_npc.y, obj_camera);
__view_set(e__VW.Object, 0, camera);
scr_cutscene_start();
scene = 0;
timer = 0;
global.radio_pause = true;