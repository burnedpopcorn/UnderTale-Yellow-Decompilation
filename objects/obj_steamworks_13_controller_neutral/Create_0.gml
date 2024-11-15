if (live_call())
    return global.live_result;

if (global.sworks_flag[3] >= 1)
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
instance_create(190, obj_pl.y, obj_flowey_npc);
instance_create(105, 155, obj_steamworks_13_vines);
obj_flowey_npc.action_sprite = true;
obj_flowey_npc.image_alpha = 0;
obj_flowey_npc.image_speed = 0;
obj_flowey_npc.sprite_index = spr_floweyrise;
instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
obj_pl.image_alpha = 0;
obj_pl.x = 104;
obj_pl.y = 152;
obj_player_npc.action_sprite = true;
obj_player_npc.image_speed = 0;
obj_player_npc.sprite_index = spr_pl_right;
obj_player_npc.image_angle = 90;
scr_camera_move(104, 155, 999);
scr_cutscene_start();
