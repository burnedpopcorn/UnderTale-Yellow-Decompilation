if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
instance_create(160, 340, obj_asgore_npc);
obj_asgore_npc.npc_direction = "up";
obj_asgore_npc.down_sprite_idle = spr_asgore_talking_down_happy;
obj_pl.x = 160;
obj_pl.y = 576;
obj_pl.direction = 90;
instance_create(160, 576, obj_player_npc);
instance_create(160, 544, obj_martlet_npc);
camera_set_view_target(view_camera[0], 1164);

with (obj_doorway)
    instance_destroy();
