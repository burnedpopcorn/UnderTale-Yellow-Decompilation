var battle_box, radius, xx, yy;

if (live_call())
    return global.live_result;

battle_box = 3154;
radius = irandom_range(0, 359);
xx = battle_box.x + lengthdir_x(80, radius);
yy = battle_box.y + lengthdir_y(80, radius);
instance_create_depth(xx, yy, -100, obj_battle_enemy_attack_macro_fly);
alarm[0] = spawn_interval;
