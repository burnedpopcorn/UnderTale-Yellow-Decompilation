layer_set_visible("overlay_2", true);

with (instance_create(227, 297, obj_starlo_npc))
{
    action_sprite = true;
    sprite_index = spr_pacifist_ending_starlo_getup;
    image_speed = 0;
    image_index = 0;
    up_sprite = spr_starlo_up_walk;
    right_sprite = spr_starlo_sad_right_walk;
    down_sprite = spr_starlo_sad_down_walk;
    left_sprite = spr_starlo_sad_left_walk;
    up_sprite_idle = spr_starlo_up_talk;
    right_sprite_idle = spr_starlo_sad_right_talk;
    down_sprite_idle = spr_starlo_sad_down_talk;
    left_sprite_idle = spr_starlo_sad_left_talk;
    npc_direction = "left";
}

with (instance_create(102, 298, obj_martlet_npc))
{
    action_sprite = true;
    sprite_index = spr_pacifist_ending_martlet_getting_up;
    image_speed = 0;
    image_index = 0;
    npc_direction = "right";
}

with (instance_create(162, 300, obj_player_npc))
    npc_direction = "up";

obj_pl.x = 162;
obj_pl.y = 300;
scene = -1;
cutscene_timer = 0;
cutscene_music = 0;
overlay_alpha = 0;
circle_alpha = 1;
white_overlay_radius = 0;
scr_cutscene_start();
instance_create_depth(163, 252, -252, obj_newhome_03_cutscene_mask);
