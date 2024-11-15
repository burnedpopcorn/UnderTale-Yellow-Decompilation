if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_geno;
obj_steamworks_29_gardener_bot.image_speed = 0;
instance_create(170, 260, obj_axis_npc);

if (global.sworks_flag[20] >= 1)
{
    instance_destroy(obj_axis_npc);
    instance_destroy(obj_steamworks_29_gardener_bot);
    instance_destroy();
    exit;
}
