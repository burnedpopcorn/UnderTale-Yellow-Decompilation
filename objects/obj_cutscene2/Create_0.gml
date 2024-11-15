scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
event_user(0);

with (instance_create(160, 64, obj_starlo_npc))
    npc_direction = "left";

with (instance_create(192, 64, obj_ceroba_npc))
    npc_direction = "left";
