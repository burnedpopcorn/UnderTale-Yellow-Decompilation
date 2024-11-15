var xx;

xx = irandom_range(battle_box.bbox_left + 20, battle_box.bbox_right - 20);
instance_create_depth(xx, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_macro_frogger);
obj_battle_enemy_attack_macro_frogger.vspeed = -3;
