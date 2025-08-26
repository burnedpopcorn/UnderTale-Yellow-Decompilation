if (live_call())
    return global.live_result;

var xx = choose(battle_box.bbox_left - 20, battle_box.bbox_right + 20);
var yy = irandom_range(battle_box.bbox_top + 30, battle_box.bbox_bottom - 30);
instance_create_depth(xx, yy, -115, obj_battle_enemy_attack_bigfrog_frog_tongue_fly);
alarm[1] = spawn_interval;
