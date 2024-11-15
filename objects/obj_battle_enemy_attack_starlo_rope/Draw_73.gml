if (!instance_exists(obj_heart_battle_fighting_red))
    exit;

draw_sprite_ext(spr_battle_enemy_attack_ceroba_white_soul, 0, obj_heart_battle_fighting_red.x, obj_heart_battle_fighting_red.y, 1, 1, 0, c_white, rope_soul_overlay_alpha);
draw_sprite(spr_battle_enemy_starlo_soul, 0, obj_heart_battle_fighting_red.x, obj_heart_battle_fighting_red.y);
