if (live_call())
    return global.live_result;

image_speed = 1;
enemy_dead = false;
enemy_spared = false;
base_sprite = 1934;
base_alpha = 1;
base_alpha_new = 0;
alt_alpha = 0;
alt_alpha_new = 0;
alt_alpha_timer = random_range(60, 150);
glitch_chance = 130;
can_draw_ghost = false;
current_attack = 1;
