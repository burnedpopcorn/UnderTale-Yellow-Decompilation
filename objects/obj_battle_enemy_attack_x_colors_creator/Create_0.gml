var battle_box, blue, orange;

if (live_call())
    return global.live_result;

battle_box = 3154;
blue = instance_create_depth(battle_box.x, battle_box.y, -50, obj_battle_enemy_attack_axis_blue_laser_spin);
blue.direction = 45;
orange = instance_create_depth(battle_box.x, battle_box.y, -50, obj_battle_enemy_attack_axis_orange_laser_spin);
orange.direction = 135;
attack_interval = room_speed * 1.35;
attack_count = 7;
current_side = "left";
scene = 0;
alarm[0] = 30;
scr_enable_battle_box_surface();
