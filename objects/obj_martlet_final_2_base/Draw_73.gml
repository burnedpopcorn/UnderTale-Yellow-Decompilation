if (live_call())
    return global.live_result;

draw_set_alpha(healthbar_alpha);
draw_healthbar(220, 10, 420, 20, (global.current_hp_enemy / global.max_hp_enemy) * 100, c_red, c_lime, c_lime, 0, true, false);
draw_set_alpha(1);
