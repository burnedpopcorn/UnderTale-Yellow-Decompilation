if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("slither a", "slither b", "slither c");
image_yscale = 0;
image_xscale = 1;
instance_create_depth(x, y - 30, -100, obj_battle_enemy_attack_slither_warning);
scene = 0;
cutscene_timer = 0;
spawn_direction_min = 45;
spawn_direction_max = 135;
spawn_direction = 45;
spawn_direction_inc = 15;
spawn_delay = 5;
spawn_delay_max = spawn_delay;
