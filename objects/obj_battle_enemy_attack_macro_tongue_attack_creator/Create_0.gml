var i;

if (live_call())
    return global.live_result;

battle_box = 3154;
attack_tick = 0;
frog_count = 4;
scr_enable_battle_box_surface();

for (i = 0; i < frog_count; i++)
{
    frog_top[i] = instance_create_depth(battle_box.bbox_left - 20 - (45 * i), battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_bigfrog_frog_run);
    frog_bot[i] = instance_create_depth(battle_box.bbox_right + 20 + (45 * i), battle_box.bbox_top + 4, -100, obj_battle_enemy_attack_bigfrog_frog_run);
}

current_frog_top = choose(0, 1);
current_frog_bot = choose(0, 1);
attack_delay = 2;
attack_delay_max = 2;
spawn_interval = 10;
alarm[1] = spawn_interval;
alarm[2] = 270;
