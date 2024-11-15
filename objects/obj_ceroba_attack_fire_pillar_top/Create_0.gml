var i, pillar_base, battle_box, warning;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");

for (i = 0; i < 4; i++)
{
    pillar_base = instance_create_depth(x, y + (i * 64), depth + 1, obj_ceroba_attack_fire_pillar_base);
    pillar_base.spawner = id;
}

image_xscale = 2;
image_yscale = 2;
scene = -1;
cutscene_timer = 0;
loop_duration = 0.05;
battle_box = 3154;

for (i = 0; i < 3; i++)
{
    warning = instance_create_depth(x, battle_box.bbox_bottom - 4 - (i * sprite_get_height(spr_ceroba_attack_fire_pillar_warning) * 2), -100, obj_ceroba_pillar_warning);
    alarm[0] = warning.alarm[0] * 1.1;
}
