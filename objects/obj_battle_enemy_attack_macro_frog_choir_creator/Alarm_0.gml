if (live_call())
    return global.live_result;

var left_platform = instance_create_depth(battle_box.bbox_left - 30, battle_box.bbox_top + 50, -100, obj_battle_enemy_attack_macro_choir_platform);
left_platform.hspeed = platform_speed;
var right_platform = instance_create_depth(battle_box.bbox_right + 30, battle_box.bbox_top + 120, -110, obj_battle_enemy_attack_macro_choir_platform);
right_platform.hspeed = -platform_speed;
max_frogs -= 1;

if (max_frogs == green_frog_spawn_point)
    spawn_green_frog = true;

if (max_frogs > 0)
    alarm[0] = platform_delay;
else
    instance_destroy();
