if (can_fire == 0)
    exit;

var x_target = lengthdir_x(beam_length, direction);
var y_target = lengthdir_y(beam_length, direction);
var stretch_multiplier = point_distance(x, y, x_target, y_target) / sprite_get_width(spr_battle_enemy_attack_starlo_rope);
var new_col = 16777215;
draw_sprite_ext(spr_battle_enemy_attack_starlo_rope, 0, x, y, stretch_multiplier, 1, direction, new_col, draw_alpha);
