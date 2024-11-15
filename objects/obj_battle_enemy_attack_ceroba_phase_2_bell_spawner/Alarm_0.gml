var battle_box;

if (live_call())
    return global.live_result;

if (attack_stop)
    exit;

battle_box = 3154;
instance_create_depth(spawn_pos, battle_box.bbox_top - 40, -100, obj_battle_enemy_attack_ceroba_phase2_bell);
spawn_pos_last = spawn_pos;

do
    spawn_pos = random_range(battle_box.bbox_left + 40, battle_box.bbox_right - 40);
until (abs(spawn_pos - spawn_pos_last) > 40);

alarm[0] = 50;

if (global.hotland_flag[2] == 2)
    alarm[0] = 30;

if (global.hotland_flag[2] == 3)
    alarm[0] = 25;
