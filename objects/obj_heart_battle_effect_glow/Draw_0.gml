if (!instance_exists(obj_heart_battle_fighting_parent))
    exit;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha * obj_heart_battle_fighting_parent.image_alpha);
