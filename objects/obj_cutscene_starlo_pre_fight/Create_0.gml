scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
audio_sound_gain(mus_wind, 1, 0);
wind_sound = audio_play_sound(mus_wind, 1, 1);
audio_sound_pitch(wind_sound, 0.5);

if (global.route == 3)
{
    scene = -1;
    exit;
}

if (global.dunes_flag[39] == 1)
{
    scene = -1;
    exit;
}

if (global.dunes_flag[24] == 2)
{
    scene = -1;
    instance_create(0, 0, obj_cutscene_starlo_post_fight_neutral);
    exit;
}
else if (global.dunes_flag[24] == 1 && global.route == 1)
{
    scene = -1;
    instance_create(0, 0, obj_cutscene_starlo_post_fight_neutral_alive);
    exit;
}

var actor_starlo = instance_create(160, 80, obj_starlo_npc);

with (actor_starlo)
{
    up_sprite = spr_starlo_up_walk;
    right_sprite = spr_starlo_sad_right_walk;
    down_sprite = spr_starlo_sad_down_walk;
    left_sprite = spr_starlo_sad_left_walk;
    up_sprite_idle = spr_starlo_up_talk;
    right_sprite_idle = spr_starlo_sad_right_talk;
    down_sprite_idle = spr_starlo_sad_down_talk;
    left_sprite_idle = spr_starlo_sad_left_talk;
}

if (global.dunes_flag[24] != 0)
{
    scene = 17;
    actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
    actor_ceroba = instance_create(obj_pl.x, obj_pl.y + 80, obj_ceroba_npc);
    actor_ceroba.npc_direction = "up";
    __view_set(e__VW.Object, 0, actor_starlo);
}
else
{
    actor_starlo.action_sprite = true;
    actor_starlo.sprite_index = spr_starlo_up_wind;
    actor_starlo.image_speed = 0.25;
}
