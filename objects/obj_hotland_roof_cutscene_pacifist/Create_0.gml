if (live_call())
    return global.live_result;

global.player_can_run = false;

if (global.route != 2 || global.hotland_flag[1] >= 1)
{
    instance_destroy();
    exit;
}

if (global.hotland_flag[3] > 0 && route == 2)
{
    instance_destroy();
    exit;
}

with (instance_create_depth(205, 300, 0, obj_martlet_npc))
{
    can_walk = false;
    up_sprite = spr_martlet_up_roof;
    right_sprite = spr_martlet_right_roof;
    down_sprite = spr_martlet_down_roof;
    left_sprite = spr_martlet_left_roof;
    up_sprite_idle = spr_martlet_up_talk_roof;
    right_sprite_idle = spr_martlet_right_talk_roof;
    down_sprite_idle = spr_martlet_down_talk_roof;
    left_sprite_idle = spr_martlet_left_talk_roof;
    npc_direction = "up";
}

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
draw_alpha = 0;
draw_alpha_white = 0;
draw_clover_yellow_alpha = 0;
