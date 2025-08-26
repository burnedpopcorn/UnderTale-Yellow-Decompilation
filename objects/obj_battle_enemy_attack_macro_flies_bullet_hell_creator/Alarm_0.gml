if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var radius = irandom_range(0, 359);
var xx = battle_box.x + lengthdir_x(80, radius);
var yy = battle_box.y + lengthdir_y(80, radius);
instance_create_depth(xx, yy, -100, obj_battle_enemy_attack_macro_fly);
alarm[0] = spawn_interval;
