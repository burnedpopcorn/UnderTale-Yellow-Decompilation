if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
soul_array = [-4, -4, -4, -4, -4];
draw_alpha = 0;
instance_create(160, 193, obj_asgore_npc);
obj_asgore_npc.npc_direction = "up";
instance_create(160, 216, obj_player_npc);
