if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

with (obj_axis_npc)
{
    action_sprite = true;
    sprite_index = spr_axis_down_dead_regular;
    image_speed = 0;
}

if (global.sworks_flag[31] >= 5)
{
    instance_destroy();
    exit;
}
