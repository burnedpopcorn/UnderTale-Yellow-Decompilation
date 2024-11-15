if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
instance_create(150, 320, obj_asgore_npc);
instance_create(150, 380, obj_player_npc);
obj_pl.image_alpha = 0;
