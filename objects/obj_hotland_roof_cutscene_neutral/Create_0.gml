if (global.route != 1 || instance_exists(obj_credits_final_neutral))
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
clover_shake = false;
draw_alpha = 0;
draw_alpha_white = 0;
draw_clover_yellow_alpha = 0;
global.player_can_run = false;

if (global.hotland_flag[12] == 1)
{
    scene = 60;
    obj_pl.image_alpha = 0;
    obj_pl.x = obj_martlet_npc.x;
    obj_pl.y = obj_martlet_npc.y + 60;
    instance_create(obj_martlet_npc.x, obj_martlet_npc.y + 20, obj_flowey_npc);
    obj_flowey_npc.image_alpha = 0;
    instance_destroy(obj_martlet_npc);
    draw_alpha = 1;
    cutscene_music = audio_play_sound(mus_missing_inaction, 1, 0);
    audio_sound_set_track_position(cutscene_music, 15);
    audio_sound_gain(cutscene_music, 0, 0);
    audio_sound_gain(cutscene_music, 1, 500);
}
