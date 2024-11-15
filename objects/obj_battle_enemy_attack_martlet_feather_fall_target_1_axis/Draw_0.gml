draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);

if (!instance_exists(obj_martlet_body))
    draw_sprite_ext(spr_battle_enemy_attack_martlet_target_2_axis, image_index, x, y, image_xscale, image_yscale, geno_target_angle, c_white, image_alpha);
