scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
cutscene_duel_timer = 0;

if (global.dunes_flag[40] == 1)
{
    instance_destroy();
    exit;
}

instance_create(720, 420, obj_starlo_npc);

with (obj_starlo_npc)
{
    up_sprite = spr_starlo_up_walk;
    right_sprite = spr_starlo_sad_right_walk;
    down_sprite = spr_starlo_sad_down_walk;
    left_sprite = spr_starlo_sad_left_walk;
    up_sprite_idle = spr_starlo_up_talk;
    right_sprite_idle = spr_starlo_sad_right_talk;
    down_sprite_idle = spr_starlo_sad_down_talk;
    left_sprite_idle = spr_starlo_sad_left_talk;
    npc_direction = "up";
}

background_fade_alpha = 0;
