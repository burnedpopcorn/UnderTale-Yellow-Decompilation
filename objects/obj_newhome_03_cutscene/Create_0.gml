if (global.route != 2)
{
    instance_destroy();
    exit;
}

if (global.hotland_flag[10] > 0)
{
    instance_destroy();
    exit;
}

if (global.hotland_flag[3] == 1)
{
    instance_destroy();
    instance_create(x, y, obj_newhome_03_cutscene_postfight_spare);
    exit;
}
else if (global.hotland_flag[3] == 2)
{
    instance_destroy();
    instance_create(x, y, obj_newhome_03_cutscene_postfight_kill);
    exit;
}

with (instance_create(163, 239, obj_ceroba_npc))
    npc_direction = "up";

with (instance_create(163, 287, obj_starlo_npc))
{
    npc_direction = "up";
    up_sprite = spr_starlo_up_walk;
    right_sprite = spr_starlo_sad_right_walk;
    down_sprite = spr_starlo_sad_down_walk;
    left_sprite = spr_starlo_sad_left_walk;
    up_sprite_idle = spr_starlo_up_talk;
    right_sprite_idle = spr_starlo_sad_right_talk;
    down_sprite_idle = spr_starlo_sad_down_talk;
    left_sprite_idle = spr_starlo_sad_left_talk;
}

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
starlo_overlay = 0;
