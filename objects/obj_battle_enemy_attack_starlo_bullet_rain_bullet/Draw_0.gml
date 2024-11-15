var x_target, y_target, stretch_multiplier, new_col;

if (can_fire == 0)
    exit;

x_target = lengthdir_x(beam_length, direction);
y_target = lengthdir_y(beam_length, direction);
stretch_multiplier = point_distance(x, y, x_target, y_target) / sprite_get_width(spr_battle_enemy_attack_starlo_rope);
new_col = c_white;
draw_sprite_ext(spr_battle_enemy_attack_starlo_rope, 0, x, y, stretch_multiplier, 1, direction, new_col, draw_alpha);
