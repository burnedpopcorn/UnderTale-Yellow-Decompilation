if (live_call())
    return global.live_result;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);

if (id_feather.feather_targetted == true)
    draw_sprite_ext(spr_battle_enemy_attack_martlet_target_spread, image_index, x, y, image_xscale, image_yscale, draw_angle, c_white, image_alpha);
else
    draw_sprite_ext(spr_battle_enemy_attack_martlet_target_big_circle, image_index, x, y, image_xscale, image_yscale, draw_angle, c_white, image_alpha);
