var battle_box, bell_offset, bell;

if (live_call())
    return global.live_result;

battle_box = 3154;
bell_offset = 45;
bell = instance_create_depth(spawn_pos, battle_box.bbox_top - 40, -1100, obj_battle_enemy_attack_ceroba_phase2_bell);
bell.bullet_hit_points = 2;
bell.fall_delay = 1;
spawn_pos_last = spawn_pos;

do
    spawn_pos = random_range(battle_box.bbox_left + 40, battle_box.bbox_right - 40);
until (abs(spawn_pos - spawn_pos_last) > 20);

alarm[0] = bell_offset;
