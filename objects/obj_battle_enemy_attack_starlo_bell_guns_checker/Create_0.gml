var box = obj_dialogue_box_battle_transformation_any;
var bell_x = 320;
var bell_y = box.bbox_top - 15 - sprite_get_height(spr_battle_enemy_attack_starlo_bell);
instance_create(bell_x, bell_y, obj_battle_enemy_attack_starlo_bell);
alarm[1] = 30;
attack_counter = 6;
boss_draw_alpha = 1;
boss_fade_in = false;
