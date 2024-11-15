if (live_call())
    return global.live_result;

if (instance_number(obj_flowey_world_controller) > 1)
{
    instance_destroy();
    exit;
}

global.cutscene = true;
scene = 0;
cutscene_timer = 0;
tori_dialogue = 0;
overlay_alpha = 0;
white_overlay_alpha = 0;
shake_intensity = 0;
obj_pl.image_alpha = 0;
obj_pl.x = 184;
obj_pl.y = 651;
obj_pl.direction = 270;
depth = -999999;
battle_surf = surface_create(640, 480);
clover_hurt_count = 3;
