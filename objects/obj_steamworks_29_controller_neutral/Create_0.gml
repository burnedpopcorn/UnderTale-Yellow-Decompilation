scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
guardener_pitch = 0.5;

if (global.sworks_flag[20] == 1)
{
    obj_pl.x = 170;
    obj_pl.y = 360;
    obj_pl.direction = 90;
    obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_idle;
    obj_steamworks_29_gardener_bot.image_speed = 1;
    instance_create(170, obj_steamworks_29_gardener_bot.y + 20, obj_camera);
    obj_camera.move = false;
    camera_set_view_target(view_camera[0], 1120);
    scr_radio_fade(0, 0);
    global.cutscene = true;
    scene = 20;
}
else if (global.sworks_flag[20] == 2)
{
    instance_destroy(obj_steamworks_29_gardener_bot);
    instance_destroy();
    exit;
}
else if (global.sworks_flag[20] >= 3)
{
    obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_dead;
    obj_steamworks_29_gardener_bot.solid = true;
    obj_steamworks_29_gardener_bot.depth = -obj_steamworks_29_gardener_bot.y;
    instance_destroy();
    exit;
}
