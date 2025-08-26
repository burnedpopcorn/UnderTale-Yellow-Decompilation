if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;

if (global.sworks_flag[46] != 2)
{
    instance_destroy();
    exit;
}

obj_pl.x = 448;
obj_pl.y = 180;
obj_pl.image_alpha = 0;
instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
obj_player_npc.action_sprite = true;
obj_player_npc.sprite_index = spr_pl_lying;

if (global.sworks_flag[50] == 1)
{
    instance_create_depth(obj_player_npc.x - 30, obj_player_npc.y, -100, obj_ceroba_npc);
    obj_ceroba_npc.npc_direction = "right";
    global.party_member = obj_ceroba_follower;
}

var fade = instance_create(0, 0, obj_screen_fade_effect);
fade.fade_stage = 1;
fade.fade_alpha = 1;
fade.fade_color = 16777215;
