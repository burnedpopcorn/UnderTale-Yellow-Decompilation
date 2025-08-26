if (live_call())
    return global.live_result;

instance_destroy();
var turret = instance_create_depth(x, y, -100, obj_battle_enemy_attack_axis_turret_2);
turret.side = side;
