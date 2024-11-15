if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_alpha = 0;
fade_in = 0;
bullet_hit_points = 7;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
destroy_noloop = false;
can_move = false;
move_speed = 2;
target_position = [0, 0];
x_offset = x;
x_offset_base = 0;
